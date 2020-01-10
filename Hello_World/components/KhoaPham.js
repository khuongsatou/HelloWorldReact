import React,{Component} from "react";
import PropTypes from 'prop-types';
import {
    View,Text,StyleSheet
} from 'react-native';



export default class KhoaPham extends React.Component{
    render(){
        return(
            <View style={aoKPT.o}>
                <Text style={aoKPT.t}>Component Khoa Pham</Text>
                <Text>{this.props.tenKhachHang }</Text>
                <Text>{this.props.age }</Text>
            </View>
        );
    }
}
KhoaPham.propTypes   ={
    tenKhachHang: PropTypes.string.isRequired,
    age:PropTypes.number,
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
