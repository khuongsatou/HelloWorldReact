import React,{Component} from "react";
import {
    View,Text,StyleSheet
} from 'react-native';



export default class KhoaPham extends React.Component{
    render(){
        return(
            <View style={aoKPT.o}>
                <Text style={aoKPT.t}>Component Khoa Pham</Text>
            </View>
        );
    }
}

var aoKPT = StyleSheet.create({
    o:{
        width:200,
        height:300,
        backgroundColor:'green',

    },
    t:{
        color:'white',
    }
});