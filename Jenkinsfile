pipeline 
{
    agent any

    stages 
	{
        stage('Build') 
		{
            steps 
			{
                echo 'Build the application'
            }
        }
		
		stage('Test') 
		{
            steps 
			{
                echo 'Test the application'
            }
        }
		
		stage('Deploy') 
		{
            steps 
			{
                echo 'Deploy the application'
            }
        }
	
    }
	post 
	{
	
	
	  always
	  {
	    emailext body: 'summary', subject: 'pipeline status', to: 'nagarajujogu7799@gmail.com'
	  }
	}
}
