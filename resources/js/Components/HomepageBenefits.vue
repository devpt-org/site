<template>
  <div class="grid grid-cols-1 gap-8 md:gap-4 md:grid-cols-4 striped">
      <div v-for="benefit in benefits">
          <div v-if="benefit['type']==='text'">
              <span class="text-amber-600 font-bold text-xl" v-html="benefit['title']??''"></span>
              <div v-html="benefit['text']??''"></div>
          </div>
          <div v-else>
              <img :class="benefit['class']??''" :src="benefit['url']??'#'"/>
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
