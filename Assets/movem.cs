using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class movem : MonoBehaviour
{
    // Start is called before the first frame update
   public Rigidbody rb;
    // Start is called before the first frame update
    void Start()
    {
        rb=GetComponent<Rigidbody>();
        
    }

    // Update is called once per frame
    void Update()
    {if(Input.GetKey(KeyCode.W)){
       transform.Translate(Time.deltaTime*2.0f,0f,0f); 
    }
if(Input.GetKey(KeyCode.S)){
 transform.Translate(0f,0f,Time.deltaTime*2.0f);}
if(Input.GetKey(KeyCode.F)){
rb.AddForce(Vector3.up*10,ForceMode.Impulse);
}
}}
