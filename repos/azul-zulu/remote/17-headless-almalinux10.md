## `azul-zulu:17-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:7d027cfceb8e5de3d520b6a4488f13e279570ea2e3ecd54b3df31b6d80437852
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:4298b6857107028791a50dc09718a3a7f27a79bde5c974acb61dc5a388cd495d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.5 MB (219489781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2e5b001d5f2920f53ba83dcc383960d2cb3e14eb730e89fb65a0bdbe262dd35`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:13 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:13 GMT
CMD ["/bin/bash"]
# Wed, 02 Sep 2026 22:16:35 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 02 Sep 2026 22:16:35 GMT
ENV LANG=C.UTF-8
# Wed, 02 Sep 2026 22:16:35 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jdk-headless-17.0.20.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 02 Sep 2026 22:16:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 02 Sep 2026 22:16:35 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 22:16:35 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:653c5d8d0d6694b5f22ff2c258227792bc61603c5743f59b2221eb24864d05d3`  
		Last Modified: Wed, 02 Sep 2026 21:53:28 GMT  
		Size: 68.9 MB (68862668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:400c8f353e53d4de688633187b4d619027d7bd79f318266da3d0b96f59c76f9c`  
		Last Modified: Wed, 02 Sep 2026 22:16:50 GMT  
		Size: 150.6 MB (150627113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:add2d715c1b9012e8021fcbcde3a3ceed0e58f79fdcf0b7a96c05b54e0606de9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb3b32d930a409a251c2269b1436479acf947449e065372fc65bffc1c26d56cf`

```dockerfile
```

-	Layers:
	-	`sha256:6b4f6061f450b0306be6e869bb4542bc3999814486aa779a9aa189dfa7a73773`  
		Last Modified: Wed, 02 Sep 2026 22:16:46 GMT  
		Size: 9.2 KB (9245 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:0fedf01279fce4d54ee764f2bea6eb0b05f2b02fc9c0121930849b5f0a94ef3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.1 MB (218055004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a004e8559a62316d88bc3e4ee24d5c89e7c01d5982757496aa01c38f881b8f40`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:16 GMT
CMD ["/bin/bash"]
# Wed, 02 Sep 2026 22:17:47 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 02 Sep 2026 22:17:47 GMT
ENV LANG=C.UTF-8
# Wed, 02 Sep 2026 22:17:47 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jdk-headless-17.0.20.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 02 Sep 2026 22:17:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 02 Sep 2026 22:17:47 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 22:17:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:802b840a8d25ea1358a31fbc4ea7c8131247ca176ca97b5f148712b005031c7f`  
		Last Modified: Wed, 02 Sep 2026 21:53:33 GMT  
		Size: 67.4 MB (67431802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba586ad272acea1b9c385f1c7fb49c3fa364e2166a34046cfd89c677bce65d31`  
		Last Modified: Wed, 02 Sep 2026 22:18:04 GMT  
		Size: 150.6 MB (150623202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4895325f6efccffddf01713a47916a6a0287a4cccdc676c9b939750c80bf7c92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:681ccd3a2c19f8b9fe082fb08406157989023b4b02acc826a3c94e2b1f91904c`

```dockerfile
```

-	Layers:
	-	`sha256:c026f7406a986ed7448428c760efc675286137cd658ece31b4c29245c7f4f740`  
		Last Modified: Wed, 02 Sep 2026 22:18:01 GMT  
		Size: 9.3 KB (9337 bytes)  
		MIME: application/vnd.in-toto+json
