## `azul-zulu:11-jre-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:0b30c67f927f096ad713ab8266e5c0017a0d06ae4d6effb776ac98028237caed
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:a58c4565e8e37ff104f1d73d4d43023c386b8f15ba9d72bed6fde233b33e5e18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.6 MB (134644337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ed259b42a75a5df1abca4b324d0bfb0aab550b0527c2b908e5d9e159f1f90de`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:13 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:13 GMT
CMD ["/bin/bash"]
# Wed, 02 Sep 2026 22:16:33 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 02 Sep 2026 22:16:33 GMT
ENV LANG=C.UTF-8
# Wed, 02 Sep 2026 22:16:33 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jre-headless-11.0.32.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 02 Sep 2026 22:16:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 02 Sep 2026 22:16:33 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:653c5d8d0d6694b5f22ff2c258227792bc61603c5743f59b2221eb24864d05d3`  
		Last Modified: Wed, 02 Sep 2026 21:53:28 GMT  
		Size: 68.9 MB (68862668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f19b01495ee82d280cb3a3da64b1b67b477a0cd0233c371ce6de68ca4c92fe99`  
		Last Modified: Wed, 02 Sep 2026 22:16:44 GMT  
		Size: 65.8 MB (65781669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:54710002e6163116eea908eee080db07b0f737609ed68fbe060f25ee97389abb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97a6df1cb2733a2b5a8e93bc2f5e7797f6c683f47a54ecf14770ed266859d446`

```dockerfile
```

-	Layers:
	-	`sha256:f09f9d988d13d9b6ce24bb6cb0a5ced35972fe6e699eb3224a793c84d14799e6`  
		Last Modified: Wed, 02 Sep 2026 22:16:42 GMT  
		Size: 9.2 KB (9244 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:4ff14bc13df470405e32a7b9715e78ddf2a2fc11c79a809730b73fa4a269648e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (133045799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f32aca40e13164e7c3262384b440d5ae083024e82b98112706cfbce92d88e1a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:16 GMT
CMD ["/bin/bash"]
# Wed, 02 Sep 2026 22:18:00 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 02 Sep 2026 22:18:00 GMT
ENV LANG=C.UTF-8
# Wed, 02 Sep 2026 22:18:00 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jre-headless-11.0.32.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 02 Sep 2026 22:18:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 02 Sep 2026 22:18:00 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:802b840a8d25ea1358a31fbc4ea7c8131247ca176ca97b5f148712b005031c7f`  
		Last Modified: Wed, 02 Sep 2026 21:53:33 GMT  
		Size: 67.4 MB (67431802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47a54c2088127d9a912d44729c58cb2a043aabb3fd1067b7b871dc6744f80aa7`  
		Last Modified: Wed, 02 Sep 2026 22:18:11 GMT  
		Size: 65.6 MB (65613997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:000f6bc35e32b78c789f22e0bd26bdbd820daaf317facc7fcb417a368cfb3c8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6abaa4ddfe31e7082dfd5ba9909fe243066590562833ed6870ccfd59d97fc5f`

```dockerfile
```

-	Layers:
	-	`sha256:ce88f554abb6a0e40985cb167092fbc3d887bfa375a4e78200eebc37362c7efb`  
		Last Modified: Wed, 02 Sep 2026 22:18:09 GMT  
		Size: 9.3 KB (9336 bytes)  
		MIME: application/vnd.in-toto+json
