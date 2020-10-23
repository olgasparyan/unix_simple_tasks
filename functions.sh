#########################################
### Simple Functions written in Shell ##
#######   by Olga Gasparyan   ##########
#######   October 22, 2020    ##########
## Create as part of a Coursera class ##



#function that multiplies all the goven arguments of the function
function plier {
 local tot=1

 for i in o$@
 do
  let tot=tot*$i
 done

 echo $tot
}

#function that returns 1 if an argument is an even number and 0 - otherwise
function isiteven {
 for i in $@
 do
  let reminder=$[$i % 2]
  if [[ $reminder -eq 0 ]]
  then
   echo "1"
  else
   echo "0"
  fi
 done
}

#function that estimates the amount of even numbers in a given function argument
function nevens {
 local count=0

 for i in $@
 do
  let count=count+$(isiteven $i)
 done
 echo $count

}

#function that estimates the odds of having an odd number in a goven function argument
function howodd {
 local odd
 odd=$(nevens $@)
 sum=$#
 echo "1-$odd/$sum" | bc -l
}


#function returns the Fibonacci sequence
function fib {
  f1=0
  f2=1
  for (( i=0;i<$1;i++ ))
  do
    echo -n $f1
    let fn=$f1+$f2
    let f1=$f2
    let f2=$fn
  done
}
