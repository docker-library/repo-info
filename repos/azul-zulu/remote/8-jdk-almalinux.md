## `azul-zulu:8-jdk-almalinux`

```console
$ docker pull azul-zulu@sha256:fc473425e18f8804731f27f951be6c0aace0ace8173c943e88ca138a6bf0c44e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jdk-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:a68fc6ee029bbfffd39572bb58855d7140a764c6470dcf20ccbe1482bcdcae60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.1 MB (133123253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf5cab7cf999bba84c8e8493738345dd5f28a1783ed1b64d94b1f7933d3d4c6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:20 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:20 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:40:17 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:40:17 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:40:17 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jdk-8.0.514-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 18 Nov 2026 02:40:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Wed, 18 Nov 2026 02:40:17 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:f7eb2ddfe716bbe5a789e107fd8eb761cff0982c7444fc8f71ff2bd32513a061`  
		Last Modified: Mon, 16 Nov 2026 21:44:37 GMT  
		Size: 69.4 MB (69370480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2044e74131f8169a2ddf8c8a2a3bc666c46e70ab809afe2be88c1a570422a8cd`  
		Last Modified: Wed, 18 Nov 2026 02:40:27 GMT  
		Size: 63.8 MB (63752773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4a34a345dfa6d65d438257888cd14011b635787e4c67a63be0af3879d08fb666
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c163e458dbf468862f5207dfb7128e790a15b63ddce93453c7c91ad5bd8003b`

```dockerfile
```

-	Layers:
	-	`sha256:ca40e9eb04849b4f4cf6ea29e2c8d2ce7d97a0c59bd3d362620488e9cef225eb`  
		Last Modified: Wed, 18 Nov 2026 02:40:25 GMT  
		Size: 9.4 KB (9446 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jdk-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:4e130621d867d4addaf64c6b172a5cad64f1936d29af20364040903cdecf9e0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132063048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95300218096fa31cf880c79a3320fa89df78d76893e7005e85f41307b6ab957f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:35 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:35 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:40:15 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:40:15 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:40:15 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jdk-8.0.514-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 18 Nov 2026 02:40:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Wed, 18 Nov 2026 02:40:15 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:393cd084864e1edb3d8b62a1faef8c3a32a405ba52f353858c2898cdbb0f08cb`  
		Last Modified: Mon, 16 Nov 2026 21:44:52 GMT  
		Size: 68.0 MB (67950574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe03a257101d1ee4e01341979ed8bd5488dfac3e1cacbd6a66bbf5ae1d94919`  
		Last Modified: Wed, 18 Nov 2026 02:40:25 GMT  
		Size: 64.1 MB (64112474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:26aceb5ece7b8e3d1f769566da8e400f3eb78129a998c47921a504d3fe192892
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46a9d6e732cf0c0992004cb4e6c91386aae1b9fdcfb45fcb489afaf449e2de88`

```dockerfile
```

-	Layers:
	-	`sha256:23b762e9d40499f0eea1b6e17d692393810513466b907df836ba189c1a5f6b1b`  
		Last Modified: Wed, 18 Nov 2026 02:40:24 GMT  
		Size: 9.6 KB (9550 bytes)  
		MIME: application/vnd.in-toto+json
