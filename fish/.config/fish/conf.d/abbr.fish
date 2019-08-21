# Abbreviations available only in interactive shells
if status --is-interactive
    # git abbreviations
    abbr -a -g gco git checkout

    # kubectl abbreviations
    abbr -a -g k kubectl
    abbr -a -g kgp kubectl get pods

    # work abbreviations
    if test (whoami) = "william.artero"
        abbr -a -g klocal kubectl config use-context kubernetes-admin@kind
        abbr -a -g kqa kubectl config use-context william.artero-qa.k8s.dafiti.local
        abbr -a -g klive kubectl config use-context william.artero-live.k8s.dafiti.local
    end
end