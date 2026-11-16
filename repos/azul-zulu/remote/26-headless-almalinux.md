## `azul-zulu:26-headless-almalinux`

```console
$ docker pull azul-zulu@sha256:12f3a93f9d890fca401ee87eed7ea1f0fe000ae097ba58a9ed3ba34ad028fce3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-headless-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:c33458bc6dd32850bfc616f4089b59e997d4e2f99c7912e0de727d3deb7913df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.3 MB (256285652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f2eda04b4ae4e75b3fa72c8c4fd84ec2ed8d8cbaaefaa9633e07e4a1ab0a4c3`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:20 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:20 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:10:07 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:10:07 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:10:07 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jdk-headless-26.0.2.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:10:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Mon, 16 Nov 2026 22:10:07 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 22:10:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f7eb2ddfe716bbe5a789e107fd8eb761cff0982c7444fc8f71ff2bd32513a061`  
		Last Modified: Mon, 16 Nov 2026 21:44:37 GMT  
		Size: 69.4 MB (69370480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acd7ea8580408d78a5871967064cb35b3bf902bd27e45939e88863e5e7982100`  
		Last Modified: Mon, 16 Nov 2026 22:10:25 GMT  
		Size: 186.9 MB (186915172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e67bfe7aa75ec3981f23fc1dc668c79e0f42df175f3fd2cdf33a8eb2ada3d09a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8cf24674af922815344c5cc4ce81affc30139e8224c2b00d2c7c0c9dc93b8d8`

```dockerfile
```

-	Layers:
	-	`sha256:3a2dc109cd0e1e5e3edf531fe85fd3476d383259c1c48c84c0a74a5edab3475f`  
		Last Modified: Mon, 16 Nov 2026 22:10:21 GMT  
		Size: 9.2 KB (9242 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-headless-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:d20e98f482e95ebf795115a0f6ff08bf8e340e4e1606c98b5192269c7c042a12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.6 MB (254561420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91bcc8a7250fff963cc0e52c2d8df5b528d411e9cf88d94b89e1a1f5ceeb50d8`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:35 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:35 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:10:06 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:10:06 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:10:06 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jdk-headless-26.0.2.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:10:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Mon, 16 Nov 2026 22:10:06 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 22:10:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:393cd084864e1edb3d8b62a1faef8c3a32a405ba52f353858c2898cdbb0f08cb`  
		Last Modified: Mon, 16 Nov 2026 21:44:52 GMT  
		Size: 68.0 MB (67950574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24252002cc70bdb9cc3c59a825ba28a4d511e056ff76b87a46fc6c8cf36979a1`  
		Last Modified: Mon, 16 Nov 2026 22:10:26 GMT  
		Size: 186.6 MB (186610846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a874a63af03149f8a95b22593b91dc408feecb88e2eb26705812013286878698
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f752034123be6c98f8d277f5c71cd75445987eeb271f48a29ebcc9d6b30c019`

```dockerfile
```

-	Layers:
	-	`sha256:35ccaaead0ee5b52511ced9c47ae3d93ab542560f7d49204475f3ef9712a59d1`  
		Last Modified: Mon, 16 Nov 2026 22:10:22 GMT  
		Size: 9.3 KB (9334 bytes)  
		MIME: application/vnd.in-toto+json
