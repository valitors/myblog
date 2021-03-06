<?php
/**
 * Created by PhpStorm.
 * User: lufficc
 * Date: 2016/8/19
 * Time: 14:41
 */
namespace App\Http\ViewComposers;

use App\Repositories\PostRepository;
use Illuminate\View\View;

class HotPostsComposer
{

    protected $postRepository;

    /**
     * Create a new profile composer.
     *
     * @internal param UserRepository $users
     * @param PostRepository $postRepository
     */
    public function __construct(PostRepository $postRepository)
    {
        $this->postRepository = $postRepository;
    }

    /**
     * Bind data to the view.
     *
     * @param  View $view
     * @return void
     */
    public function compose(View $view)
    {
        $hotPosts = $this->postRepository->hotPosts();
        $view->with('hotPosts', $hotPosts);
    }
}