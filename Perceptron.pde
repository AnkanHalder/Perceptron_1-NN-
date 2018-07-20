class Perceptron{
  float[] weight=new float[2];
  float lr=0.1;
  
  //Constructor
  Perceptron(){
    //Initialize
    for(int i=0;i<weight.length;i++)
      weight[i]=random(-1,1);
  }
  
  int sign(float sum){
    if(sum>=0)
    return 1;
    else
    return -1;
  }
  
  int guess(float[] inputs){
    float sum=0;
    for(int i=0;i<weight.length;i++){
      sum+=inputs[i]*weight[i];
    }
    int output =sign(sum);
    return output;
  }
  
  void train(float[] inputs,int target){
    int guess=guess(inputs);
    int error=target-guess;
    
    
    //Change the weights 
    for(int i=0;i<weight.length;i++){
    weight[i]+=error*inputs[i]*lr;  
    }
  }
  
  
}
