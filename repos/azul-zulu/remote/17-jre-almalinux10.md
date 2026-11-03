## `azul-zulu:17-jre-almalinux10`

```console
$ docker pull azul-zulu@sha256:faef3957b161398b2ceb90240e6f3fedd8d5c9c40d94e20860f4c52162f46ce6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:66bb4034441006bcb6eb3baf84ea5e2c45f9fca5e2fefae8acc0850fa682bba9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.1 MB (140146490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbe856dcf592ce7e1461ebab73e6e19a7b3be313c6c136478f6ea2bbbe6ca6f0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:08:24 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:08:24 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:08:24 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jre-17.0.21.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 03 Nov 2026 00:08:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Tue, 03 Nov 2026 00:08:24 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91224df931d713eb579e4353984fe1d55973ad3a751cd9985e5e0d7abf919ab2`  
		Last Modified: Tue, 03 Nov 2026 00:08:37 GMT  
		Size: 71.0 MB (71047215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:0c5ae915a564347c16fbf1aabda41fbd127871520e8c52030ad523eea1cce2c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbeb345fac27bf6e2fe360f76f8403d5119899e00b8b96eeef55d6eb8ac73424`

```dockerfile
```

-	Layers:
	-	`sha256:eee4343f4af9a1c1599e9ef7460369db67cb797e096ddef84e02b635c2aaf366`  
		Last Modified: Tue, 03 Nov 2026 00:08:35 GMT  
		Size: 9.2 KB (9155 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:a19613d44a53d7e3feac6cbdb6e8fbbbb0a2da3e227fec9f059900ef34481278
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.8 MB (138765606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c217c430d498fe1a85cbb5e94fd40ca58a3848f85e65f699b395a19def71046`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:08:42 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:08:42 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:08:42 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jre-17.0.21.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 03 Nov 2026 00:08:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Tue, 03 Nov 2026 00:08:42 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e67fe54921b53cd3cf2b16f5cf776264213cafc11aff3903c7bc5d0b8d092da8`  
		Last Modified: Tue, 03 Nov 2026 00:08:54 GMT  
		Size: 71.1 MB (71099095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:6e6c529a2453ccd703ee18bf7e0d40afdef37a155c99bd731d6464ad8c2684ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15fb04f9222c5d0080bdd111e152076bfbb8e62d713fcf4704e301b8fa5aba7c`

```dockerfile
```

-	Layers:
	-	`sha256:ce84993b5442b0542faf5d9dea52b4762de0ee8d81d94a022163538923d19436`  
		Last Modified: Tue, 03 Nov 2026 00:08:52 GMT  
		Size: 9.2 KB (9248 bytes)  
		MIME: application/vnd.in-toto+json
