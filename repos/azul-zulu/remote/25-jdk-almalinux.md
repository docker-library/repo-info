## `azul-zulu:25-jdk-almalinux`

```console
$ docker pull azul-zulu@sha256:074275ebd131ea32084ffff4d5c43252964dcaab8c67bdc780f0617e57c3c502
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jdk-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:ea0f14dbeb13a26e6fa7a33421bffbf4b7c9904290ba97c9d143f071808f3010
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.6 MB (252582512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:064e58b99678d9cd241aac214bb2332c2c8d513c2bf2f6dd49aaec28185996bc`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:13 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:13 GMT
CMD ["/bin/bash"]
# Wed, 02 Sep 2026 22:17:07 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 02 Sep 2026 22:17:07 GMT
ENV LANG=C.UTF-8
# Wed, 02 Sep 2026 22:17:07 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jdk-25.0.4.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 02 Sep 2026 22:17:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 02 Sep 2026 22:17:07 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 22:17:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:653c5d8d0d6694b5f22ff2c258227792bc61603c5743f59b2221eb24864d05d3`  
		Last Modified: Wed, 02 Sep 2026 21:53:28 GMT  
		Size: 68.9 MB (68862668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bef70d0342b26d502af0b20c5966f4fb85f28ef7de74889022611ad982ec6cc`  
		Last Modified: Wed, 02 Sep 2026 22:17:25 GMT  
		Size: 183.7 MB (183719844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:7d431f9f098b77e51a1be6c858221a36663d1f9123f02768b9ce65a1edd6c3be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eca17de19f0b9ba4c6aa432265be02717b3e34c364245b8b08fc4fa0eb5d15c7`

```dockerfile
```

-	Layers:
	-	`sha256:6cdcb9e7b281ec3311be2744d61f9bf4ca9ed62e10fc87e45d3fb2618122537f`  
		Last Modified: Wed, 02 Sep 2026 22:17:21 GMT  
		Size: 9.5 KB (9485 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jdk-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:5ae8c6e8160771da09f75b645d042825125541e22034c57b0c1e75a93c8eda7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250267050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:614b32ae590256f2c0551cf2f00c4aa7ae0f7791bc9d4066c3f7e94c2b4fe217`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:16 GMT
CMD ["/bin/bash"]
# Wed, 02 Sep 2026 22:18:31 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 02 Sep 2026 22:18:31 GMT
ENV LANG=C.UTF-8
# Wed, 02 Sep 2026 22:18:31 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jdk-25.0.4.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 02 Sep 2026 22:18:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 02 Sep 2026 22:18:31 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 22:18:31 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:802b840a8d25ea1358a31fbc4ea7c8131247ca176ca97b5f148712b005031c7f`  
		Last Modified: Wed, 02 Sep 2026 21:53:33 GMT  
		Size: 67.4 MB (67431802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:381c3ecab7a0fd345a75a6cde9daebcd04643cc955f8f1dd272ae9e071bc4699`  
		Last Modified: Wed, 02 Sep 2026 22:18:50 GMT  
		Size: 182.8 MB (182835248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f98cfbe4a958d47813c9095abf286eec79b44b12f7f6e59caf2ea9485f0a7d17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12492da87c01dd71ec617e452cba557dd655ec917c931e11886ae47fc7f09842`

```dockerfile
```

-	Layers:
	-	`sha256:84af9d11616de4aba8755f6697f109a6c88d13df40b0a9761451d44566d59dc5`  
		Last Modified: Wed, 02 Sep 2026 22:18:46 GMT  
		Size: 9.6 KB (9589 bytes)  
		MIME: application/vnd.in-toto+json
