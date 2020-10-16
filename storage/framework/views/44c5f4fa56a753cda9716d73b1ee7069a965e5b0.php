<div class="w-full max-w-lg">
    <div class="flex flex-wrap">
        <h1 class="mb-5"><?php echo e($title); ?></h1>
    </div>
</div>

<form class="w-full max-w-lg" method="POST" action="<?php echo e($route); ?>">
    <?php echo csrf_field(); ?>
    <?php if(isset($update)): ?>
        <?php echo method_field("PUT"); ?>
    <?php endif; ?>
    <div class="flex flex-wrap -mx-3 mb-6">
        <div class="w-full px-3">
            <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="name">
                <?php echo e(__("Nombre")); ?>

            </label>
            <input name="name" value="<?php echo e(old("name") ?? $project->name); ?>" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="name" type="text">
            <p class="text-gray-600 text-xs italic"><?php echo e(__("Nombre del proyecto")); ?></p>
            <?php $__errorArgs = ["name"];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
            <div class="border border-red-400 rounded-b bg-red-100 mt-1 px-4 py-3 text-red-700">
                <?php echo e($message); ?>

            </div>
            <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
        </div>
    </div>

    <div class="flex flex-wrap -mx-3 mb-6">
        <div class="w-full px-3">
            <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="description">
                <?php echo e(__("Descripción")); ?>

            </label>
            <textarea name="description" class="no-resize appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-gray-500 h-48 resize-none" id="description"><?php echo e(old("description") ?? $project->description); ?></textarea>
            <p class="text-gray-600 text-xs italic"><?php echo e(__("¿De qué trata tu proyecto?")); ?></p>
            <?php $__errorArgs = ["description"];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
            <div class="border border-red-400 rounded-b bg-red-100 mt-1 px-4 py-3 text-red-700">
                <?php echo e($message); ?>

            </div>
            <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
        </div>
    </div>
    <div class="md:flex md:items-center">
        <div class="md:w-1/3">
            <button class="shadow bg-teal-400 hover:bg-teal-400 focus:shadow-outline focus:outline-none text-white font-bold py-2 px-4 rounded" type="submit">
                <?php echo e($textButton); ?>

            </button>
        </div>
    </div>
</form>
<?php /**PATH /Users/israel/cursosdesarrolloweb/laravel8/blog-laravel8/resources/views/projects/form.blade.php ENDPATH**/ ?>