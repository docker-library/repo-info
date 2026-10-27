## `azul-zulu:21-jre-headless-almalinux`

```console
$ docker pull azul-zulu@sha256:39ab43cba8a3de067b7227b258d9747c1b80e963943e3db429a0ed78f6158326
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-headless-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:8162ed105e10e47f1f244d6b23c1402c289e086b5de1481e166968316edead68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (145008052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:252cbda72c42d6e42796325947aa63e0ee13743232e4714e4c974ed74399d36a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:27:42 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:27:42 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:27:42 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jre-headless-21.0.13-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:27:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Tue, 27 Oct 2026 17:27:42 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44c9e041280e64e02a764bc76ce5838cb27a7eee355ce5350d753e207b1f30b0`  
		Last Modified: Tue, 27 Oct 2026 17:27:55 GMT  
		Size: 75.9 MB (75908777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:692fd8417c197ccff3be8e429b0f292eaad8b34381526b404a6595567959a14d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72a4bfcb76fce45fa116da668f317c847fce92f41ed715f840cf86ace52e3ab5`

```dockerfile
```

-	Layers:
	-	`sha256:18f9afb6be16e46525048d88792820af9e270fe7d23ab0d5f476cb88c8b1155a`  
		Last Modified: Tue, 27 Oct 2026 17:27:52 GMT  
		Size: 9.2 KB (9234 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-headless-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:cf3edab0975eec076b3a0ad05f22a2b8e28d9b2436046718d11e13ead0bbb14b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.2 MB (143230118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bf28d177e5af7c98f18243083d1a9ff484d6c88a7b6d760b992b7be777f037a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:23:22 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:23:22 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:23:22 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jre-headless-21.0.13-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:23:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Tue, 27 Oct 2026 17:23:22 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:524c810dd580ac99cc01454b3c00e2d5dfe8ef6ad720edf78a21397f0a3fc0da`  
		Last Modified: Tue, 27 Oct 2026 17:23:35 GMT  
		Size: 75.6 MB (75563607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1f83cdada39983176508a8c00ac0f47a7f18dfb433fc9f79ce51bad9abed5c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1f286d9d468b4d540212cf20ee970ecb384a8f7250860fdf529004923787705`

```dockerfile
```

-	Layers:
	-	`sha256:96b920b036d168601ba64b115ea27199164c6bf7f99794b5ab74ce127c04106b`  
		Last Modified: Tue, 27 Oct 2026 17:23:32 GMT  
		Size: 9.3 KB (9325 bytes)  
		MIME: application/vnd.in-toto+json
