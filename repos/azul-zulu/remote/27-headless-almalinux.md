## `azul-zulu:27-headless-almalinux`

```console
$ docker pull azul-zulu@sha256:6b417b946f0593c7fafceae9b25aa27f22ebbd34c9a9c4378fa012e70fbb4788
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-headless-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:4d1c726813562736eb66674fc12e16c4cb4b98b2cca12f5549c3e16cb3788bb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.5 MB (253493900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad6ef99df5ef593c83449cb4e33bae1ad1c7b1adc0009b3b754ba4cc8ef10bc8`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:42 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:42 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 20:03:06 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:03:06 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:03:06 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jdk-headless-27.0.1-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 23 Oct 2026 20:03:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Fri, 23 Oct 2026 20:03:06 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 20:03:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:aa40d510fc6e470a2f5bd27e447ebfe9df24b41b10a52ccfb13fe5a7e461a36d`  
		Last Modified: Fri, 02 Oct 2026 18:17:00 GMT  
		Size: 68.9 MB (68879554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1176c1d26e8996c7b3cf8730475ca25a7aeb18fd788d2f5b75db28a2152c4327`  
		Last Modified: Fri, 23 Oct 2026 20:03:23 GMT  
		Size: 184.6 MB (184614346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:8e81aa469dc05aebf5c46f2d032858f96b49672b81b2dad7ee23a19bc7d3127e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e8ac76508f218de2014b5a2f7fe24e1a2ac09395f29a776f8e71c57e2666496`

```dockerfile
```

-	Layers:
	-	`sha256:64fc67ca809268795b03e2500f15a87686c5b24b7647cf988c12fde42d492315`  
		Last Modified: Fri, 23 Oct 2026 20:03:20 GMT  
		Size: 9.2 KB (9232 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-headless-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:ec6ada5798b57153c7ce65136a7591f54882f1cb5a5e68cd9235922247ed1bac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.8 MB (251753802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbb9243895bf5bc196fddf09df4668c3c9a9411f4b6cc68b8f747022388a8ce1`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:16 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 20:05:21 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:05:21 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:05:21 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jdk-headless-27.0.1-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 23 Oct 2026 20:05:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Fri, 23 Oct 2026 20:05:21 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 20:05:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:72828735570afd8ff6fa969666f806b8b8aad35a219161ae6386607e517a0ff3`  
		Last Modified: Fri, 02 Oct 2026 18:16:33 GMT  
		Size: 67.5 MB (67458184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d92823ba53fde8fbf1d0fec1a36bea7b73d4e618474d8c2e0f56283d0009b87`  
		Last Modified: Fri, 23 Oct 2026 20:05:41 GMT  
		Size: 184.3 MB (184295618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e910fcd445e6163ea81d03fce5568da3a25580e4badd51da4b0edeb47d0b94c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6024842a2ec958b0a9a4b24730031f637f140aedd6ea0a07132019835b84f4bd`

```dockerfile
```

-	Layers:
	-	`sha256:e00a58846a149659cdaa380a980dbce4c370ee4c135e76214ea2a0447cd0a25b`  
		Last Modified: Fri, 23 Oct 2026 20:05:37 GMT  
		Size: 9.3 KB (9324 bytes)  
		MIME: application/vnd.in-toto+json
