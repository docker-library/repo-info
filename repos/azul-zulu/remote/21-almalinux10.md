## `azul-zulu:21-almalinux10`

```console
$ docker pull azul-zulu@sha256:70e133f330105161d48b1fbe9a076def6e4312ffd28e7e6299d9e7903c1ceeee
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:9532e242df63cf06ae7a45e9ea3e8a2e4f4f3ffd67cca28b9fb918202aa2ebd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.5 MB (233501908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a64729cb63558092d0ea26e1fc74bf32d6b63fdfac3f396684512b67daffa9`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:13 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:13 GMT
CMD ["/bin/bash"]
# Wed, 02 Sep 2026 22:16:58 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 02 Sep 2026 22:16:58 GMT
ENV LANG=C.UTF-8
# Wed, 02 Sep 2026 22:16:58 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jdk-21.0.12.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 02 Sep 2026 22:16:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 02 Sep 2026 22:16:58 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 22:16:58 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:653c5d8d0d6694b5f22ff2c258227792bc61603c5743f59b2221eb24864d05d3`  
		Last Modified: Wed, 02 Sep 2026 21:53:28 GMT  
		Size: 68.9 MB (68862668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14473e718967ade95914bbe61ecae3ec912dd8f2ead3ef094b5c48165e526cbd`  
		Last Modified: Wed, 02 Sep 2026 22:17:14 GMT  
		Size: 164.6 MB (164639240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3599b166a5bdf10a9e16519766a01bb258d82b30f2df49447028ddad04ce2068
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1d88a4679c8d12e452a2a4fe5768f28c3dbd2744f303b010073121e4441ff7d`

```dockerfile
```

-	Layers:
	-	`sha256:1b95f961372f4789f017e922bc7b56dedf3c27693ae5aceeedd485d99bced612`  
		Last Modified: Wed, 02 Sep 2026 22:17:09 GMT  
		Size: 9.5 KB (9488 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:e62284f103e60d3869ac0aa7d343a486207dd0a1a21b8db3f6d4a16981891a6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231345634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d91b1a2878e0f9fd933cd17faf8396da0da4eac4d22e4d52cafd8f32e79390e7`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:16 GMT
CMD ["/bin/bash"]
# Wed, 02 Sep 2026 22:18:08 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 02 Sep 2026 22:18:08 GMT
ENV LANG=C.UTF-8
# Wed, 02 Sep 2026 22:18:08 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jdk-21.0.12.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 02 Sep 2026 22:18:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 02 Sep 2026 22:18:08 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 22:18:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:802b840a8d25ea1358a31fbc4ea7c8131247ca176ca97b5f148712b005031c7f`  
		Last Modified: Wed, 02 Sep 2026 21:53:33 GMT  
		Size: 67.4 MB (67431802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd601190a5ed30cb34bb431b0e5a5eba4d79caf3fe604c837ada333372a8e518`  
		Last Modified: Wed, 02 Sep 2026 22:18:25 GMT  
		Size: 163.9 MB (163913832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:80d7e40460664dee14e4e684543729f248e8d23fc61fa4ae4a5f0f9037400e93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e9976a54e2777a76b3db44c85298ab0c679982ebd7d423ec145c59bd0798b64`

```dockerfile
```

-	Layers:
	-	`sha256:6dd40c966a790ec5bb181ef988ab85029e90d5c060a8a331749e5d2c5bf561da`  
		Last Modified: Wed, 02 Sep 2026 22:18:21 GMT  
		Size: 9.6 KB (9592 bytes)  
		MIME: application/vnd.in-toto+json
