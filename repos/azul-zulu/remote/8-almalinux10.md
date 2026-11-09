## `azul-zulu:8-almalinux10`

```console
$ docker pull azul-zulu@sha256:9033c4f92023fb8ab73d5344084c2ca9e1d7e57f35731a0ec8a0713bef5ca09b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:67f1300b2e7de0f5163c783269a444de6b16a24a0ae1a7a513dfa7fbe5dcf947
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132637431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2c498375a18ead14778de299a4602aa0fa4303484f5bcc55e8d003f329a1d67`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 20:19:01 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 09 Nov 2026 20:19:01 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 20:19:01 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jdk-8.0.512-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 09 Nov 2026 20:19:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Mon, 09 Nov 2026 20:19:01 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae960d5c593996f479df25015f17b478f1353d8cadbe595242d4d7feea94aa9c`  
		Last Modified: Mon, 09 Nov 2026 20:19:12 GMT  
		Size: 63.5 MB (63538156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:8fc5cda439a7549a779d070cdb693efa25f6a1b35b68cf22859a4d1d5f231921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c413c4c23b87a9417e5e1bc088e059fc4876aaf3b57d30e302e51607f189d4f`

```dockerfile
```

-	Layers:
	-	`sha256:520c8451653aa3ceebf470213bccc2529f6eb821a134d4f20371725caa540c31`  
		Last Modified: Mon, 09 Nov 2026 20:19:10 GMT  
		Size: 9.4 KB (9446 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:043216b14318c927b394965f37fe7cec2c4c1fb9c882657178a995b923cc60ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131558018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b15f5e7b8552deda03cd18667f4d4820c1096aab2a5780a50e4500b85fd5f783`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 20:20:17 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 09 Nov 2026 20:20:17 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 20:20:17 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jdk-8.0.512-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 09 Nov 2026 20:20:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Mon, 09 Nov 2026 20:20:17 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e2720ae221fe03bec8d79a62470574752d754ec669a70b4516cb5167903a84b`  
		Last Modified: Mon, 09 Nov 2026 20:20:28 GMT  
		Size: 63.9 MB (63891507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f04aa13ff163fb26b0a2b2862db2ba9b37a294ffff02ad1f585ce2b3fd8e0542
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5966572c1ba2f399a207a6e1ab819776d0a4e09cda2be0f1d20c9fa102dd146`

```dockerfile
```

-	Layers:
	-	`sha256:b225ff3ad799b99d58105ee5bf04839ec84285de2a7068bc285acfdd32d5c129`  
		Last Modified: Mon, 09 Nov 2026 20:20:26 GMT  
		Size: 9.6 KB (9550 bytes)  
		MIME: application/vnd.in-toto+json
