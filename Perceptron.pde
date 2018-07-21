class Perceptron{
  float[] weight;
  float lr=0.01;
  
  //Constructor
  Perceptron(int n){
    weight=new float[n];
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
    println("Guess "+guess);
    println("Target "+target);  
    println("Error "+error);
    
    
    
    //Change the weights 
    for(int i=0;i<weight.length;i++){
      println("Previous Wieght "+i+" :"+weight[i]);
      weight[i]+=error*inputs[i]*lr;  
      println("Next Stage Wieght "+i+" :"+weight[i]);
    }
    
    println("-------------xxxxxxxxxxxx------------------");
  }
  
  float guessY(float x){
    float w0=weight[0];
    float w1=weight[1];
    float w2=weight[2];
    
    return -(w2/w1) - (w0/w1) * x;
  }
  
  
}
