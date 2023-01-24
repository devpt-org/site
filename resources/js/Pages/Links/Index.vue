<script setup>
import {ref, reactive, onMounted, toRefs} from 'vue'
const props = defineProps(['links'])
console.log(props.links)
</script>

<template>
    <div>
        <div v-for="(link, i) in props.links" :key="i" v-text="link.title"/>
    </div>
</template>
