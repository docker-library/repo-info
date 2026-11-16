## `azul-zulu:25-jdk-almalinux10`

```console
$ docker pull azul-zulu@sha256:f00566e41c8f69644f5ed9e61d9a00431694e4bc3e2fe1462219a45dc30231e4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jdk-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:64f0b263ae0abe4618cd4ad2ffea7b75684ea2d0fc0a5cb672f6d6d1292e6153
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.2 MB (253164884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb749ee9e881644b70639f755d02f6440675191e115b3bef84266db0f761935f`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:04 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:04 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:11:06 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:11:06 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:11:06 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jdk-25.0.5.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:11:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Mon, 16 Nov 2026 18:11:06 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 18:11:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d3706e31ba51bfd08aeb09ac0ebbf184e0118db10938a31a3f2e81cb6a30eb58`  
		Last Modified: Sun, 15 Nov 2026 10:39:35 GMT  
		Size: 69.1 MB (69125779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48c8f9af9e3e443b1f1e0a452c12f98a3051a51e7f25fd310248ae725011b6c7`  
		Last Modified: Mon, 16 Nov 2026 18:11:24 GMT  
		Size: 184.0 MB (184039105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jdk-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1d007d011a818559b99a9f803aa478c63701498f465fc73666d961bb0cb4561e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6df7c924bb79b240cbf926d06530030a072390eddab3e9bc207a318cd5f6f149`

```dockerfile
```

-	Layers:
	-	`sha256:22cb2078dd07cc7585d681ce38f4616188329edd5ecb5ecea9dac79540179557`  
		Last Modified: Mon, 16 Nov 2026 18:11:20 GMT  
		Size: 9.5 KB (9494 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jdk-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:42737ef2627b34c3ad69ce0b16f025cecfadcb359a21e3a9ca080103c4b88631
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250864153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:271082a2e2c4cacbb98a463e1aa3b4cdff15b585a6992ff76399b256de0a3067`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:01 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:01 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:11:00 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:11:00 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:11:00 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jdk-25.0.5.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:11:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Mon, 16 Nov 2026 18:11:00 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 18:11:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a8ea85215dba158c09933d2c53437e503eade277c558f76de4290ce32293adac`  
		Last Modified: Mon, 16 Nov 2026 03:15:03 GMT  
		Size: 67.7 MB (67697816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dbf0ae07daeecf6504ea0b3531fb4abfb657ebcc899d072c1ba82f8d8a0db38`  
		Last Modified: Mon, 16 Nov 2026 18:11:20 GMT  
		Size: 183.2 MB (183166337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jdk-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:128ff3d7dead8505872d750b06656d153257998e4c9f4621f3e08b42e09aae33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:366bc234f78f41a7a3631be2dab30acd8cac840935c32be73db1e82c18142fb5`

```dockerfile
```

-	Layers:
	-	`sha256:fa99549707331fb6b1d342956ad3c17ebed57976e25a5cf8bfe47fccbdca930e`  
		Last Modified: Mon, 16 Nov 2026 18:11:16 GMT  
		Size: 9.6 KB (9599 bytes)  
		MIME: application/vnd.in-toto+json
