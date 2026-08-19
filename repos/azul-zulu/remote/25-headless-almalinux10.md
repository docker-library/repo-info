## `azul-zulu:25-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:47cf773896a1a588748d9b75a1a3ba6c2bc8ebc59941a105fe65dc9c56866fb7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:8bd509f28b631f7965f5d206cbc06922e772aa8012d58149e7005074220939b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.3 MB (251325600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b412be692847ee37661d07d87ac556a5f387d3c135584df2d30506c77d6a7d3`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:16 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:16 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 17:36:33 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:36:33 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:36:33 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jdk-headless-25.0.4.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 19 Aug 2026 17:36:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 19 Aug 2026 17:36:33 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:36:33 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4224950577242fb7ff1faf31d7a6c1520d455ab1a1eecff8aed5766688091539`  
		Last Modified: Tue, 02 Jun 2026 19:04:32 GMT  
		Size: 68.6 MB (68562462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb5e298bd55cccb1631df4cbcde6360140f8f49a439ae9c6b50e3762455aa148`  
		Last Modified: Wed, 19 Aug 2026 17:36:50 GMT  
		Size: 182.8 MB (182763138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4347ab64c9d13b2cd56f75b1687df7b16000594291f3e85ab2abcd2c99937f0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d405699a7358e931d0f807b57447eb32b12c1bbee192d6999760f65d453313b7`

```dockerfile
```

-	Layers:
	-	`sha256:af0d354bcd63404305695a23f3c9342b5144e5efe11d2df787cf05021b75caa8`  
		Last Modified: Wed, 19 Aug 2026 17:36:46 GMT  
		Size: 9.2 KB (9242 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:a12373debee13dedfafc21552f910c71dec54c1ed70297b25c287a9d590f9187
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.0 MB (249026575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d48ee5485530b27b1bfa22048b4cb3dc6fb275127f7ae57df2f145c21d13031`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:37 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 17:36:49 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:36:49 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:36:49 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jdk-headless-25.0.4.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 19 Aug 2026 17:36:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 19 Aug 2026 17:36:49 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:36:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:11aaeaf9729fbc9690ea62f609dd17fc5d9fca4e16048f27425d411f758066b2`  
		Last Modified: Tue, 02 Jun 2026 19:04:54 GMT  
		Size: 67.1 MB (67141961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab9920ddb0cec97acdc04a436a42569430e4c67cbe0706c40b30a96d3dcc9c69`  
		Last Modified: Wed, 19 Aug 2026 17:37:09 GMT  
		Size: 181.9 MB (181884614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a7fcd0502b5dbb449233ded4b54b1c89b5c93a2d1a8a28b83e846a4ed966f868
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4e71f54f8a396f24ae7c449febbbf160fe0c84d1393c8d6825451f0012ef60d`

```dockerfile
```

-	Layers:
	-	`sha256:8a47d451a0b9afa9adf4be9196b214af0c4d0f488a232d69150df7d614fe8054`  
		Last Modified: Wed, 19 Aug 2026 17:37:05 GMT  
		Size: 9.3 KB (9334 bytes)  
		MIME: application/vnd.in-toto+json
