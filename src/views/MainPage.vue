<template>
  <div :class="$style.container">hello world</div>
</template>

<!-- <script>
import CreateOrder from "@/components/common/CreateOrder.vue";
export default {
  components: {
    CreateOrder,
  },
};
</script> -->

<style lang="scss" module>
.container {
  @include container;
  text-align: center;
  padding-top: 4rem;
  font-size: 3rem;
}
</style>
