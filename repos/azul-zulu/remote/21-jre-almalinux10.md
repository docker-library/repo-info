## `azul-zulu:21-jre-almalinux10`

```console
$ docker pull azul-zulu@sha256:0043ccfc805d6711f84051b93f4ba9a7a71353998b299edcd421d54a29e613e6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:708ee2cc87138c6f06104adc51607d6286b9051c21cb1c78846e376e28aa1352
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145448498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:756d6dc6c3632edef9f34bbc964e7d2a3d2df706f90a60d3342de7eff3ae2bb5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:27:40 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:27:40 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:27:40 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jre-21.0.13-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:27:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Tue, 27 Oct 2026 17:27:40 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b10ca16f6b30bb74fc1ed54bf8106d5cd1b53feef04d54ec38f05766848be77a`  
		Last Modified: Tue, 27 Oct 2026 17:27:53 GMT  
		Size: 76.3 MB (76349223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ee287129fe943c1dfb285759287a5ba81d9be82089922349be96fbed417db6f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 KB (9140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61267a01a95a65d0d878bc236b219d018920fb9ba090fd505dd3cc9af1eb5a80`

```dockerfile
```

-	Layers:
	-	`sha256:d88a7f1406d05090700b3ec5e1af859e8efb5a474ca8dc17b8b83716f28f2d8c`  
		Last Modified: Tue, 27 Oct 2026 17:27:50 GMT  
		Size: 9.1 KB (9140 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:ce41c84fcaaacc6d9f0cdf6f61ae88219d9f5b3d3942a1f9dfa756c56e8da87d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.7 MB (143665269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf7df2d100288ca7622469667361c3e302a45ff9e7d1599ff964991a06b5c99c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:23:17 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:23:17 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:23:17 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jre-21.0.13-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:23:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Tue, 27 Oct 2026 17:23:17 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9448ce00f0240c7608a56341eaac64a3261da79cc98112318803fd9aea838268`  
		Last Modified: Tue, 27 Oct 2026 17:23:29 GMT  
		Size: 76.0 MB (75998758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a8f8c787999959f6813fc6a6e935f8c65d23128be2a123619e7aa40f5ccb5ca7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f444dd547741bd8dd4bd77caa5ef50fcf788432f0b50e6d86607f9c08ee069b5`

```dockerfile
```

-	Layers:
	-	`sha256:080ea7beb1ef31af661aeccd7788d315099d8a8e52d9d2c8059ded2bb51ff177`  
		Last Modified: Tue, 27 Oct 2026 17:23:27 GMT  
		Size: 9.2 KB (9233 bytes)  
		MIME: application/vnd.in-toto+json
