## `azul-zulu:8-jdk-almalinux`

```console
$ docker pull azul-zulu@sha256:6bdcd5ae1f846c03528fe41cd5b391a7360b4b8b7a905b3b0f9965ff13e6fc2c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jdk-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:fb3ea14a04500dd6c78aa7f130a45377aa8856905aaaff029de18fa8927fa76c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131564809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53e096db4329516ac24bf01c84927ce804451f7e06243766112fa37573e1ad40`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:16 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:16 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 17:33:48 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:33:48 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:33:48 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jdk-8.0.504-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 19 Aug 2026 17:33:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Wed, 19 Aug 2026 17:33:48 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:4224950577242fb7ff1faf31d7a6c1520d455ab1a1eecff8aed5766688091539`  
		Last Modified: Tue, 02 Jun 2026 19:04:32 GMT  
		Size: 68.6 MB (68562462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ec0afb97798c7eaf9ba30d6702aa48c823eb77585e2ada1784cbfb261876652`  
		Last Modified: Wed, 19 Aug 2026 17:33:58 GMT  
		Size: 63.0 MB (63002347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e01c3b70522b2525f45d36cc329469caaad28b4d0597e70a7da8f16b01c67f02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:356990d88fd9b368ac2b7a52a58c192d0496e714c885c8c6d2f35f73be700b20`

```dockerfile
```

-	Layers:
	-	`sha256:ae599965bf73ca8ff42245875a57f8c03aebad9c34964af3fd8bc81eeef4a574`  
		Last Modified: Wed, 19 Aug 2026 17:33:56 GMT  
		Size: 9.4 KB (9446 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jdk-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:6b5278e536c5953be872f411d55ed9223aadfccbbc4b016259b6d96566dd2b5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130503966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:336d353daabc2a5aeacc7375d57e782e762b579fc9b8676c47b88206cf2d561c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:37 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 17:33:54 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:33:54 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:33:54 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jdk-8.0.504-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 19 Aug 2026 17:33:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Wed, 19 Aug 2026 17:33:54 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:11aaeaf9729fbc9690ea62f609dd17fc5d9fca4e16048f27425d411f758066b2`  
		Last Modified: Tue, 02 Jun 2026 19:04:54 GMT  
		Size: 67.1 MB (67141961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fde47a91baf5865cbf9fbaffcd188fe1f2416e1b29d1a8302d859671781981c7`  
		Last Modified: Wed, 19 Aug 2026 17:34:04 GMT  
		Size: 63.4 MB (63362005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:580c4e108ab066473dd710c2717df5cf8c7e564b1254b6dbfa89e819b76d991e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf3b9dbbd69e9deac6112742c6b845950df2c93e943be97a05224dfe750309a1`

```dockerfile
```

-	Layers:
	-	`sha256:af083594fdee5ee0fe5e93f2704d4bd32a588c91aa474af4cbce7742b17866f7`  
		Last Modified: Wed, 19 Aug 2026 17:34:02 GMT  
		Size: 9.6 KB (9550 bytes)  
		MIME: application/vnd.in-toto+json
