<template>
    <div class="px-4 md:px-16 lg:px-32 mb-4 grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8 md:gap-4 justify-items-start striped">
        <div v-for="benefit in benefits" class="w-full">
            <div v-if="benefit['type']==='text'">
                <span class="text-amber-600 font-bold text-xl" v-html="benefit['title']??''"></span>
                <div v-html="benefit['text']??''"></div>
            </div>
            <div v-else class="w-full md:w-auto">
                <img class="max-h-32 w-full md:w-auto" :class="benefit['class']??''" :src="benefit['url']??'#'"/>
            </div>
        </div>
    </div>
</template>

<script setup>
defineProps({
    benefits: {
        type: Object,
        default: {},
    },
});
</script>
