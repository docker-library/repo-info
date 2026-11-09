## `azul-zulu:11-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:e58d67922b18d8e0c800659111c24a3a62aaf4442b66333c59cda9b21ef5fc08
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:adb92a024cd6e6e25064e9198688c0e7847c975426640338aa396d4c8a667006
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.8 MB (215823363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eee448bf3222b7e50d9a4d292a3cfb13985086ecb8ce6433491f56d5dafc1642`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 20:21:41 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 09 Nov 2026 20:21:41 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 20:21:41 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jdk-headless-11.0.33-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 09 Nov 2026 20:21:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Mon, 09 Nov 2026 20:21:41 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 20:21:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84b73694a0ac863c2591b1be1efb44224269a4f537dbff4bf91c5fca9a788bc7`  
		Last Modified: Mon, 09 Nov 2026 20:21:55 GMT  
		Size: 146.7 MB (146724088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:27933f2133610b30664b4b2da6e5f238bd66a79bc4485ad6325916a4327fa209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0232f760d15d437f8ced57d24ce23a160947cf33f7db1f5a5714d97ba7d48b6`

```dockerfile
```

-	Layers:
	-	`sha256:729cd33adf0fe6f2ba2d8006cb11909552b4ea2842ac76b28a8b1cf6e35da416`  
		Last Modified: Mon, 09 Nov 2026 20:21:52 GMT  
		Size: 9.2 KB (9239 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:72032dc93a7d823580bd571f6b5221696f89fcb716cda5650a3d728f8d00928e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.1 MB (214059859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b55722f0278785de983b9e3c0c6969772161fac316e2792d5e9093fa1a62dec9`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 20:23:19 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 09 Nov 2026 20:23:19 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 20:23:19 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jdk-headless-11.0.33-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 09 Nov 2026 20:23:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Mon, 09 Nov 2026 20:23:19 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 20:23:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee27513b43d4db64526fc7091105b728d956f0c741db081720bdc073ffbf5c05`  
		Last Modified: Mon, 09 Nov 2026 20:23:34 GMT  
		Size: 146.4 MB (146393348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:686a9e677ce5843f1ae459e411a72e6fdac1e4e20a87c1e9970a5ee5ebd1e4ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:becca4b3442367bbd091d453467c82ef3837fb4d93c0d6d6fe536b8e1f20e28d`

```dockerfile
```

-	Layers:
	-	`sha256:65dc09963a38e0c8f2fcbf100f83dc14e0dd7cfd74d39e6e3d90f92942a5c78a`  
		Last Modified: Mon, 09 Nov 2026 20:23:31 GMT  
		Size: 9.3 KB (9330 bytes)  
		MIME: application/vnd.in-toto+json
