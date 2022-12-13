<template>
    <main>
        <nav class="navbar navebar-expand-lg navbar-dark bg-dark">
            <div class="container-fluid">
                <router-link to="/" class="navbar-brand" href="#">Laravel CRUD</router-link>
                <div class="collapse navbar-collapse">
                    <router-link exact-active-class="active" to="/" class="nav-item naw-link">Home</router-link>
                    <router-link exact-active-class="active" to="/category" class="nav-item nav-link">Category</router-link>
                </div>
            </div>
        </nav>
    </main>
</template>

<script>
    export default {}
</script>
