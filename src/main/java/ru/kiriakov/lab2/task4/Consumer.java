package ru.kiriakov.lab2.task4;

import java.util.Random;

public class Consumer implements Runnable{
    int sleepTime;
    LabBuffer buffer;
    Thread thread;
    public Consumer(LabBuffer buf, String tName){
        buffer = buf;
        Random rand = new Random();
        sleepTime = rand.nextInt(70)+70;
        thread = new Thread(this, tName);
    }
    public Thread GetThread(){
        return thread;
    }
    @Override
    public void run()
    {
        try
        {
            while(true){
                buffer.PullData();
                Thread.sleep(sleepTime);
            }
        }
        catch(InterruptedException e)
        {
            e.printStackTrace();
        }
    }
}