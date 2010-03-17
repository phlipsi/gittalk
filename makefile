#PDFS = centralized.pdf clone.pdf diff-head.pdf diff.pdf diff-staged.pdf distributed.pdf history-full.pdf history-only-c-more.pdf history-only-c.pdf history.pdf history-with-objects.pdf init.pdf log-head.pdf log.pdf objects-blob.pdf objects-commit.pdf objects-name.pdf objects.pdf objects-sha1.pdf objects-tag.pdf objects-tree.pdf repo-history.pdf repo-index.pdf repo-refs.pdf repo-worktree.pdf show-before.pdf show-file.pdf show-name-status.pdf show.pdf status.pdf undo.pdf workflow-add.pdf workflow-branch-add.pdf workflow-branch-commit.pdf workflow-branch-ff-merge.pdf workflow-branching.pdf workflow-branch-new-add.pdf workflow-branch-new-commit.pdf workflow-branch-new-merge.pdf workflow-branch-switch.pdf workflow-commit.pdf workflow-empty.pdf workflow-next-add.pdf workflow-next-commit.pdf workflow-switch.pdf worktree.pdf undo-revert.pdf undo-reset.pdf undo-restore-file.pdf undo-revert-merge.pdf undo-revert-merge-1.pdf undo-revert-merge-2.pdf remote.pdf remote-clone.pdf remote-commits.pdf remote-fetch.pdf remote-checkout-remote.pdf remote-merge.pdf remote-want-to-push-simple.pdf remote-push-simple.pdf remote-want-to-push-problem.pdf remote-pull-problem.pdf remote-push-problem.pdf

# To get this list type
#  $ grep -o "[-a-z0-9]*\.pdf" gittalk.tex | sed 's/$/\\/g'
PDFS = \
centralized.pdf\
distributed.pdf\
repo-history.pdf\
repo-refs.pdf\
repo-worktree.pdf\
repo-index.pdf\
objects.pdf\
objects-sha1.pdf\
objects-name.pdf\
history-with-objects-blob.pdf\
history-with-objects-tree.pdf\
history-with-objects-commit.pdf\
history-with-objects-tag.pdf\
init.pdf\
clone.pdf\
status.pdf\
diff.pdf\
diff-staged.pdf\
diff-head.pdf\
show.pdf\
show-before.pdf\
show-name-status.pdf\
show-file.pdf\
log.pdf\
log-head.pdf\
workflow-empty.pdf\
workflow-add.pdf\
workflow-commit.pdf\
workflow-next-add.pdf\
workflow-next-commit.pdf\
workflow-branching.pdf\
workflow-switch.pdf\
workflow-branch-add.pdf\
workflow-branch-commit.pdf\
workflow-branch-switch.pdf\
workflow-branch-ff-merge.pdf\
workflow-branch-switch.pdf\
workflow-branch-new-add.pdf\
workflow-branch-new-commit.pdf\
workflow-branch-new-merge.pdf\
workflow-branch-new-merge-conflict.pdf\
workflow-branch-new-merge-conflict-status.pdf\
workflow-branch-new-merge-conflict-versions.pdf\
workflow-branch-new-merge-conflict-edit.pdf\
workflow-branch-new-merge-conflict-resolve.pdf\
workflow-branch-new-merge-conflict-resolve-commit.pdf\
undo.pdf\
undo-revert.pdf\
undo-reset.pdf\
undo-revert-merge.pdf\
undo-revert-merge-1.pdf\
undo-revert-merge-2.pdf\
undo-restore-file.pdf\
remote.pdf\
remote-clone.pdf\
remote-clone.pdf\
remote-commits.pdf\
remote-fetch.pdf\
remote-checkout-remote.pdf\
remote-merge.pdf\
remote-delete.pdf\
remote-want-to-push-simple.pdf\
remote-push-simple.pdf\
remote-want-to-push-problem.pdf\
remote-pull-problem.pdf\
remote-push-problem.pdf\
distributed.pdf\
git-cheat-sheet.pdf

#centralized.pdf distributed.pdf \
#repo-history.pdf repo-refs.pdf repo-worktree.pdf repo-index.pdf \
#objects.pdf objects-sha1.pdf objects-name.pdf objects-blob.pdf objects-tree.pdf objects-commit.pdf objects-tag.pdf \
#init.pdf clone.pdf \
#status.pdf diff.pdf diff-staged.pdf diff-head.pdf \
#show.pdf show-before.pdf show-name-status.pdf show-file.pdf \
#log.pdf log-head.pdf gitk-rails.jpg \
# workflow-empty.pdf workflow-add.pdf workflow-commit.pdf workflow-next-add.pdf workflow-next-commit.pdf \
# workflow-branching.pdf workflow-switch.pdf workflow-branch-add.pdf workflow-branch-commit.pdf \
# workflow-branch-switch.pdf workflow-branch-ff-merge.pdf workflow-branch-switch.pdf workflow-branch-new-add.pdf \
# workflow-branch-new-commit.pdf workflow-branch-new-merge.pdf workflow-branch-new-merge-conflict.pdf workflow-branch-new-merge-conflict-status.pdf \
# workflow-branch-new-merge-conflict-versions.pdf \
# workflow-branch-new-merge-conflict-edit.pdf \
# workflow-branch-new-merge-conflict-resolve.pdf \
# workflow-branch-new-merge-conflict-resolve-commit.pdf \
# git-cheat-sheet.pdf \
# undo.pdf undo-revert.pdf undo-reset.pdf \
# undo-revert-merge.pdf undo-revert-merge-1.pdf undo-revert-merge-2.pdf undo-restore-file.pdf \
# remote.pdf remote-clone.pdf remote-clone.pdf remote-commits.pdf remote-fetch.pdf remote-checkout-remote.pdf \
# remote-merge.pdf remote-want-to-push-simple.pdf remote-push-simple.pdf remote-want-to-push-problem.pdf \
# remote-pull-problem.pdf remote-push-problem.pdf

gittalk.pdf: gittalk.tex $(PDFS)
	pdflatex gittalk.tex


%.pdf: %.svg
	inkscape -f $< -C -A $@ -z
