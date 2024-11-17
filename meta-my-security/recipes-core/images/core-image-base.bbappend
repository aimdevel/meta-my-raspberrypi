inherit extrausers
EXTRA_USERS_PARAMS = "\
    useradd -p '' tester; \
    "

IMAGE_INSTALL:append = " dropbear"