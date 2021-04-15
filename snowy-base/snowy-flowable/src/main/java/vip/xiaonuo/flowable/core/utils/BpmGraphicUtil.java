/*
Copyright [2020] [https://www.xiaonuo.vip]

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

Snowy采用APACHE LICENSE 2.0开源协议，您在使用过程中，需要注意以下几点：

1.请不要删除和修改根目录下的LICENSE文件。
2.请不要删除和修改Snowy源码头部的版权声明。
3.请保留源码和相关描述文件的项目出处，作者声明等。
4.分发源码时候，请注明软件出处 https://gitee.com/xiaonuobase/snowy
5.在修改包名，模块名称，项目代码等时，请注明软件出处 https://gitee.com/xiaonuobase/snowy
6.若您的项目无法满足以上几点，可申请商业授权，获取Snowy商业授权许可，请在官网购买授权，地址为 https://www.xiaonuo.vip
 */
package vip.xiaonuo.flowable.core.utils;

import cn.hutool.core.util.ObjectUtil;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import org.apache.commons.lang3.StringUtils;
import org.flowable.bpmn.model.*;
import org.flowable.ui.modeler.service.mapper.*;

import java.util.*;

/**
 * <p>
 * 流程图工具类，根据BpmnModel处理走过和节点和当前节点，原文件
 * 见RuntimeDisplayJsonClientResource.java
 * </p>
 *
 * @author xuyuxiang
 * @date 2020/4/28 14:30
 */
public class BpmGraphicUtil {

    private static final ObjectMapper OBJECT_MAPPER = new ObjectMapper();
    private static final List<String> EVENT_ELEMENT_TYPES = new ArrayList<>();
    private static final Map<String, InfoMapper> PROPERTY_MAPPERS = new HashMap<>();

    static {
        EVENT_ELEMENT_TYPES.add("StartEvent");
        EVENT_ELEMENT_TYPES.add("EndEvent");
        EVENT_ELEMENT_TYPES.add("BoundaryEvent");
        EVENT_ELEMENT_TYPES.add("IntermediateCatchEvent");
        EVENT_ELEMENT_TYPES.add("ThrowEvent");

        PROPERTY_MAPPERS.put("BoundaryEvent", new EventInfoMapper());
        PROPERTY_MAPPERS.put("EndEvent", new EventInfoMapper());
        PROPERTY_MAPPERS.put("IntermediateCatchEvent", new EventInfoMapper());
        PROPERTY_MAPPERS.put("ReceiveTask", new ReceiveTaskInfoMapper());
        PROPERTY_MAPPERS.put("StartEvent", new EventInfoMapper());
        PROPERTY_MAPPERS.put("SequenceFlow", new SequenceFlowInfoMapper());
        PROPERTY_MAPPERS.put("ServiceTask", new ServiceTaskInfoMapper());
        PROPERTY_MAPPERS.put("ThrowEvent", new EventInfoMapper());
        PROPERTY_MAPPERS.put("UserTask", new UserTaskInfoMapper());
    }


    public static ObjectNode processProcessElements(BpmnModel pojoModel, Set<String> completedElements, Set<String> currentElements, Collection<String> breakpoints) {
        ObjectNode displayNode = OBJECT_MAPPER.createObjectNode();
        GraphicInfo diagramInfo = new GraphicInfo();

        ArrayNode elementArray = OBJECT_MAPPER.createArrayNode();
        ArrayNode flowArray = OBJECT_MAPPER.createArrayNode();
        ArrayNode collapsedArray = OBJECT_MAPPER.createArrayNode();

        if (ObjectUtil.isNotEmpty(pojoModel.getPools())) {
            ArrayNode poolArray = OBJECT_MAPPER.createArrayNode();
            boolean firstElement = true;
            for (Pool pool : pojoModel.getPools()) {
                ObjectNode poolNode = OBJECT_MAPPER.createObjectNode();
                poolNode.put("id", pool.getId());
                poolNode.put("name", pool.getName());
                GraphicInfo poolInfo = pojoModel.getGraphicInfo(pool.getId());
                fillGraphicInfo(poolNode, poolInfo, true);
                org.flowable.bpmn.model.Process process = pojoModel.getProcess(pool.getId());
                if (ObjectUtil.isNotNull(process) && ObjectUtil.isNotEmpty(process.getLanes())) {
                    ArrayNode laneArray = OBJECT_MAPPER.createArrayNode();
                    for (Lane lane : process.getLanes()) {
                        ObjectNode laneNode = OBJECT_MAPPER.createObjectNode();
                        laneNode.put("id", lane.getId());
                        laneNode.put("name", lane.getName());
                        fillGraphicInfo(laneNode, pojoModel.getGraphicInfo(lane.getId()), true);
                        laneArray.add(laneNode);
                    }
                    poolNode.set("lanes", laneArray);
                }
                poolArray.add(poolNode);

                double rightX = poolInfo.getX() + poolInfo.getWidth();
                double bottomY = poolInfo.getY() + poolInfo.getHeight();
                double middleX = poolInfo.getX() + (poolInfo.getWidth() / 2);
                if (firstElement || middleX < diagramInfo.getX()) {
                    diagramInfo.setX(middleX);
                }
                if (firstElement || poolInfo.getY() < diagramInfo.getY()) {
                    diagramInfo.setY(poolInfo.getY());
                }
                if (rightX > diagramInfo.getWidth()) {
                    diagramInfo.setWidth(rightX);
                }
                if (bottomY > diagramInfo.getHeight()) {
                    diagramInfo.setHeight(bottomY);
                }
                firstElement = false;
            }
            displayNode.set("pools", poolArray);

        } else {
            //in initialize with fake x and y to make sure the minimal
            //values are set
            diagramInfo.setX(9999);
            diagramInfo.setY(1000);
        }

        for (org.flowable.bpmn.model.Process process : pojoModel.getProcesses()) {
            processElements(process.getFlowElements(), pojoModel, elementArray, flowArray, collapsedArray,
                    diagramInfo, completedElements, currentElements, breakpoints, null);
            processArtifacts(process.getArtifacts(), pojoModel, elementArray, flowArray, diagramInfo);
        }

        displayNode.set("elements", elementArray);
        displayNode.set("flows", flowArray);
        displayNode.set("collapsed", collapsedArray);

        displayNode.put("diagramBeginX", diagramInfo.getX());
        displayNode.put("diagramBeginY", diagramInfo.getY());
        displayNode.put("diagramWidth", diagramInfo.getWidth());
        displayNode.put("diagramHeight", diagramInfo.getHeight());
        return displayNode;
    }

    private static void processElements(Collection<FlowElement> elementList, BpmnModel model, ArrayNode elementArray, ArrayNode flowArray,
                                        ArrayNode collapsedArray, GraphicInfo diagramInfo, Set<String> completedElements,
                                        Set<String> currentElements, Collection<String> breakpoints, ObjectNode collapsedNode) {

        for (FlowElement element : elementList) {

            ObjectNode elementNode = OBJECT_MAPPER.createObjectNode();
            if (completedElements != null) {
                elementNode.put("completed", completedElements.contains(element.getId()));
            }
            if (!breakpoints.isEmpty()) {
                elementNode.put("breakpoint", breakpoints.contains(element.getId()));
            }

            if (currentElements != null) {
                elementNode.put("current", currentElements.contains(element.getId()));
            }

            if (element instanceof SequenceFlow) {
                SequenceFlow flow = (SequenceFlow) element;
                elementNode.put("id", flow.getId());
                elementNode.put("type", "sequenceFlow");
                elementNode.put("sourceRef", flow.getSourceRef());
                elementNode.put("targetRef", flow.getTargetRef());
                elementNode.put("name", flow.getName());
                List<GraphicInfo> flowInfo = model.getFlowLocationGraphicInfo(flow.getId());
                if (ObjectUtil.isNotEmpty(flowInfo)) {
                    ArrayNode wayPointArray = OBJECT_MAPPER.createArrayNode();
                    for (GraphicInfo graphicInfo : flowInfo) {
                        ObjectNode pointNode = OBJECT_MAPPER.createObjectNode();
                        fillGraphicInfo(pointNode, graphicInfo, false);
                        wayPointArray.add(pointNode);
                        fillDiagramInfo(graphicInfo, diagramInfo);
                    }
                    elementNode.set("waypoints", wayPointArray);

                    String className = element.getClass().getSimpleName();
                    if (PROPERTY_MAPPERS.containsKey(className)) {
                        elementNode.set("properties", PROPERTY_MAPPERS.get(className).map(element));
                    }

                    if (collapsedNode != null) {
                        ((ArrayNode) collapsedNode.get("flows")).add(elementNode);
                    } else {
                        flowArray.add(elementNode);
                    }
                }

            } else {

                elementNode.put("id", element.getId());
                elementNode.put("name", element.getName());

                GraphicInfo graphicInfo = model.getGraphicInfo(element.getId());
                if (graphicInfo != null) {
                    fillGraphicInfo(elementNode, graphicInfo, true);
                    fillDiagramInfo(graphicInfo, diagramInfo);
                }

                String className = element.getClass().getSimpleName();
                elementNode.put("type", className);
                fillEventTypes(className, element, elementNode);

                if (element instanceof ServiceTask) {
                    ServiceTask serviceTask = (ServiceTask) element;
                    if (ServiceTask.MAIL_TASK.equals(serviceTask.getType())) {
                        elementNode.put("taskType", "mail");

                    } else if ("camel".equals(serviceTask.getType())) {
                        elementNode.put("taskType", "camel");

                    } else if ("mule".equals(serviceTask.getType())) {
                        elementNode.put("taskType", "mule");

                    } else if (ServiceTask.HTTP_TASK.equals(serviceTask.getType())) {
                        elementNode.put("taskType", "http");
                    } else if (ServiceTask.SHELL_TASK.equals(serviceTask.getType())) {
                        elementNode.put("taskType", "shell");
                    }
                }

                if (PROPERTY_MAPPERS.containsKey(className)) {
                    elementNode.set("properties", PROPERTY_MAPPERS.get(className).map(element));
                }

                if (collapsedNode != null) {
                    ((ArrayNode) collapsedNode.get("elements")).add(elementNode);
                } else {
                    elementArray.add(elementNode);
                }

                if (element instanceof SubProcess) {
                    SubProcess subProcess = (SubProcess) element;
                    ObjectNode newCollapsedNode = collapsedNode;
                    //skip collapsed sub processes
                    if (graphicInfo != null && graphicInfo.getExpanded() != null && !graphicInfo.getExpanded()) {
                        elementNode.put("collapsed", "true");
                        newCollapsedNode = OBJECT_MAPPER.createObjectNode();
                        newCollapsedNode.put("id", subProcess.getId());
                        newCollapsedNode.putArray("elements");
                        newCollapsedNode.putArray("flows");
                        collapsedArray.add(newCollapsedNode);
                    }

                    processElements(subProcess.getFlowElements(), model, elementArray, flowArray, collapsedArray,
                            diagramInfo, completedElements, currentElements, breakpoints, newCollapsedNode);
                    processArtifacts(subProcess.getArtifacts(), model, elementArray, flowArray, diagramInfo);
                }
            }
        }
    }

    private static void processArtifacts(Collection<Artifact> artifactList, BpmnModel model, ArrayNode elementArray, ArrayNode flowArray, GraphicInfo diagramInfo) {

        for (Artifact artifact : artifactList) {

            ObjectNode elementNode = OBJECT_MAPPER.createObjectNode();
            if (artifact instanceof Association) {
                Association flow = (Association) artifact;
                elementNode.put("id", flow.getId());
                elementNode.put("type", "association");
                elementNode.put("sourceRef", flow.getSourceRef());
                elementNode.put("targetRef", flow.getTargetRef());
                fillWayPoints(flow.getId(), model, elementNode, diagramInfo);
                flowArray.add(elementNode);

            } else {

                elementNode.put("id", artifact.getId());

                if (artifact instanceof TextAnnotation) {
                    TextAnnotation annotation = (TextAnnotation) artifact;
                    elementNode.put("text", annotation.getText());
                }

                GraphicInfo graphicInfo = model.getGraphicInfo(artifact.getId());
                if (graphicInfo != null) {
                    fillGraphicInfo(elementNode, graphicInfo, true);
                    fillDiagramInfo(graphicInfo, diagramInfo);
                }

                String className = artifact.getClass().getSimpleName();
                elementNode.put("type", className);

                elementArray.add(elementNode);
            }
        }
    }

    private static void fillWayPoints(String id, BpmnModel model, ObjectNode elementNode, GraphicInfo diagramInfo) {
        List<GraphicInfo> flowInfo = model.getFlowLocationGraphicInfo(id);
        ArrayNode waypointArray = OBJECT_MAPPER.createArrayNode();
        for (GraphicInfo graphicInfo : flowInfo) {
            ObjectNode pointNode = OBJECT_MAPPER.createObjectNode();
            fillGraphicInfo(pointNode, graphicInfo, false);
            waypointArray.add(pointNode);
            fillDiagramInfo(graphicInfo, diagramInfo);
        }
        elementNode.set("waypoints", waypointArray);
    }

    private static void fillEventTypes(String className, FlowElement element, ObjectNode elementNode) {
        if (EVENT_ELEMENT_TYPES.contains(className)) {
            Event event = (Event) element;
            if (ObjectUtil.isNotEmpty(event.getEventDefinitions())) {
                EventDefinition eventDef = event.getEventDefinitions().get(0);
                ObjectNode eventNode = OBJECT_MAPPER.createObjectNode();
                if (eventDef instanceof TimerEventDefinition) {
                    TimerEventDefinition timerDef = (TimerEventDefinition) eventDef;
                    eventNode.put("type", "timer");
                    if (StringUtils.isNotEmpty(timerDef.getTimeCycle())) {
                        eventNode.put("timeCycle", timerDef.getTimeCycle());
                    }
                    if (StringUtils.isNotEmpty(timerDef.getTimeDate())) {
                        eventNode.put("timeDate", timerDef.getTimeDate());
                    }
                    if (StringUtils.isNotEmpty(timerDef.getTimeDuration())) {
                        eventNode.put("timeDuration", timerDef.getTimeDuration());
                    }

                } else if (eventDef instanceof ConditionalEventDefinition) {
                    ConditionalEventDefinition conditionalDef = (ConditionalEventDefinition) eventDef;
                    eventNode.put("type", "conditional");
                    if (StringUtils.isNotEmpty(conditionalDef.getConditionExpression())) {
                        eventNode.put("condition", conditionalDef.getConditionExpression());
                    }

                } else if (eventDef instanceof ErrorEventDefinition) {
                    ErrorEventDefinition errorDef = (ErrorEventDefinition) eventDef;
                    eventNode.put("type", "error");
                    if (StringUtils.isNotEmpty(errorDef.getErrorCode())) {
                        eventNode.put("errorCode", errorDef.getErrorCode());
                    }

                } else if (eventDef instanceof EscalationEventDefinition) {
                    EscalationEventDefinition escalationDef = (EscalationEventDefinition) eventDef;
                    eventNode.put("type", "escalation");
                    if (StringUtils.isNotEmpty(escalationDef.getEscalationCode())) {
                        eventNode.put("escalationCode", escalationDef.getEscalationCode());
                    }

                } else if (eventDef instanceof SignalEventDefinition) {
                    SignalEventDefinition signalDef = (SignalEventDefinition) eventDef;
                    eventNode.put("type", "signal");
                    if (StringUtils.isNotEmpty(signalDef.getSignalRef())) {
                        eventNode.put("signalRef", signalDef.getSignalRef());
                    }

                } else if (eventDef instanceof MessageEventDefinition) {
                    MessageEventDefinition messageDef = (MessageEventDefinition) eventDef;
                    eventNode.put("type", "message");
                    if (StringUtils.isNotEmpty(messageDef.getMessageRef())) {
                        eventNode.put("messageRef", messageDef.getMessageRef());
                    }
                }
                elementNode.set("eventDefinition", eventNode);
            }
        }
    }

    private static void fillGraphicInfo(ObjectNode elementNode, GraphicInfo graphicInfo, boolean includeWidthAndHeight) {
        commonFillGraphicInfo(elementNode, graphicInfo.getX(), graphicInfo.getY(), graphicInfo.getWidth(), graphicInfo.getHeight(), includeWidthAndHeight);
    }

    private static void commonFillGraphicInfo(ObjectNode elementNode, double x, double y, double width, double height, boolean includeWidthAndHeight) {

        elementNode.put("x", x);
        elementNode.put("y", y);
        if (includeWidthAndHeight) {
            elementNode.put("width", width);
            elementNode.put("height", height);
        }
    }

    private static void fillDiagramInfo(GraphicInfo graphicInfo, GraphicInfo diagramInfo) {
        double rightX = graphicInfo.getX() + graphicInfo.getWidth();
        double bottomY = graphicInfo.getY() + graphicInfo.getHeight();
        double middleX = graphicInfo.getX() + (graphicInfo.getWidth() / 2);
        if (middleX < diagramInfo.getX()) {
            diagramInfo.setX(middleX);
        }
        if (graphicInfo.getY() < diagramInfo.getY()) {
            diagramInfo.setY(graphicInfo.getY());
        }
        if (rightX > diagramInfo.getWidth()) {
            diagramInfo.setWidth(rightX);
        }
        if (bottomY > diagramInfo.getHeight()) {
            diagramInfo.setHeight(bottomY);
        }
    }
}
