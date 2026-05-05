
#import "../template/layout-template.typ" as layout
#import "@preview/codelst:2.0.2": sourcecode
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import fletcher.shapes: diamond

#show: doc => layout.MainPageSettings(doc)

#set heading(numbering: none)
= Appendices

== Appendix A - Code Extracts
#figure(sourcecode[```Cs
private void HandleDropAndSnap()
{
    isDragging = false; 
    if (selectedToken == null) return;

    Vector3 pos = selectedToken.transform.position;
    pos.x = Mathf.Floor(pos.x / gridSize) * gridSize + gridOffset.x;
    pos.z = Mathf.Floor(pos.z / gridSize) * gridSize + gridOffset.y;
    pos.y = 0.05f;
    selectedToken.transform.position = pos;
    DeselectToken();
}
```], caption: "A short extract of the code that was used to snap tokens to the grid")<Code:SnapTokens>

#figure(sourcecode[```Cs
    private void UpdateDrawing()
    {
        Ray ray = dmCamera.ScreenPointToRay(Mouse.current.position.ReadValue());
        if (Physics.Raycast(ray, out RaycastHit hit, 1000f, mapLayer))
        {
            Vector3 mousePos = hit.point;
            mousePos.y = 0.1f;
            
            float rawDistance = Vector3.Distance(centerPos, mousePos);

            int squares = Mathf.Max(1, Mathf.RoundToInt(rawDistance / gridSize));
            float snappedRadius = squares * gridSize;
            float feet = squares * feetPerSquare;

            currentAoE.transform.position = centerPos;
            float diameter = snappedRadius * 2f;
            
            if (visualTransform != null) 
            {
                visualTransform.localPosition = Vector3.zero;
                visualTransform.localScale = new Vector3(diameter, 0.1f, diameter);
            }
            else 
            {
                currentAoE.transform.localScale = new Vector3(diameter, 0.1f, diameter);
            }

            if (aoeText != null)
            {
                aoeText.text = feet + " ft Radius";
                if (visualTransform == null) aoeText.transform.localScale = new Vector3(1f / diameter, 10f, 1f / diameter);

                aoeText.transform.position = centerPos + new Vector3(0, 0.2f, 0);
                aoeText.transform.rotation = dmCamera.transform.rotation;
            }
        }
    }
```], caption: "An extract of the code that was used for the Radial Measurements (AoE")<Code:AoEController>

#figure(sourcecode[```Cs
private bool IsMouseOverUI()
{
    if (EventSystem.current == null) return false;
    PointerEventData eventData = new PointerEventData(EventSystem.current);
    eventData.position = Mouse.current.position.ReadValue();
    List<RaycastResult> results = new List<RaycastResult>();
    EventSystem.current.RaycastAll(eventData, results);
    
    foreach (RaycastResult result in results)
    {
        if (result.gameObject.GetComponentInParent
        <UnityEngine.UI.Button>() != null) 
            return true;
    }
    return false;
}
```], caption: "A short extract of the code that was used to provide a robust UI safeguard")<Code:IsMouseOverUI>