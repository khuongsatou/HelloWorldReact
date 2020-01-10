import React, { useState } from 'react'
import {
  StyleSheet,
  Text,
  View,
  Button,
  TextInput
} from 'react-native';


export default function App(){
  const [person,setPerson] = useState({
    name:'mario',
    age:40
  });
  const clickHandler = () =>{
    setPerson({name:'Mario 2' ,age:45});
  }
  return (
    <View style={styles.container}>
      <Text>Enter Name:</Text>
      <TextInput style={styles.input}
      multiline
      placeholder='e.g. Khuong'
      onChangeText={(val)=>setPerson({name:val,age:person.age})}
      
      />
       <Text>Enter Age:</Text>
      <TextInput style={styles.input}
      placeholder='e.g. 99'
      keyboardType='numeric'
      onChangeText={(val)=>setPerson({age:val,name:person.name})}
      />
    <Text>name: {person.name}, age: {person.age} </Text>
    </View>
  )
}


const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor:'#fff',
    alignItems:'center',
    justifyContent:'center',
  },
  buttonContainer:{
    margin:20
  },
  input:{
    borderWidth:1,
    borderColor:'#777',
    padding:8,
    margin:10,
  }
 
});
