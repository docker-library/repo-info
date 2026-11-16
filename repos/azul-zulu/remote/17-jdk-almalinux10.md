## `azul-zulu:17-jdk-almalinux10`

```console
$ docker pull azul-zulu@sha256:821f88b0e35e9705398afda733bb158b82080056eb88b3cbddcba40801754da7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jdk-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:78074baa5d262fdc5851c2551ed2e79251c6376d70a5cfaa755a3d23d50f8876
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.0 MB (220995417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1f7bb704d5394363adabfa814e8e78b14ac70f7753343cb73ff833fac81f6b6`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:04 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:04 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:10:35 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:10:35 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:10:35 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jdk-17.0.21.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:10:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Mon, 16 Nov 2026 18:10:35 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 18:10:35 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d3706e31ba51bfd08aeb09ac0ebbf184e0118db10938a31a3f2e81cb6a30eb58`  
		Last Modified: Sun, 15 Nov 2026 10:39:35 GMT  
		Size: 69.1 MB (69125779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d558115c5b631fea0410eec05a021210ae9cef975c8532f4ed592f3c126101a`  
		Last Modified: Mon, 16 Nov 2026 18:10:50 GMT  
		Size: 151.9 MB (151869638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f728217b65e485017be8c182d9451b033348bdf8f609804544ff7955fa2b187b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa6df706be59ab198d40f1fea89bcd27676fa46cc2f43db1f046d831942ca11f`

```dockerfile
```

-	Layers:
	-	`sha256:166f75571e122e49df00db2d5417c51940813b7aaee4eb7492034b57c64e4a4b`  
		Last Modified: Mon, 16 Nov 2026 18:10:47 GMT  
		Size: 9.5 KB (9498 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jdk-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:dffeb6f6a5463619ce584e5e498c335cf214ad16e254e8303e2aee6f05fe9cce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.6 MB (219625574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de73afd12ae78dc4ca4e308d8f9f2db3fed9e61f80d896a90886ab36872426b5`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:01 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:01 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:10:20 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:10:20 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:10:20 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jdk-17.0.21.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:10:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Mon, 16 Nov 2026 18:10:20 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 18:10:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a8ea85215dba158c09933d2c53437e503eade277c558f76de4290ce32293adac`  
		Last Modified: Mon, 16 Nov 2026 03:15:03 GMT  
		Size: 67.7 MB (67697816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef80006c187423aeded94b3b61a9828f8db9cf2292ef96ae7fd5bf5d131228a0`  
		Last Modified: Mon, 16 Nov 2026 18:10:35 GMT  
		Size: 151.9 MB (151927758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:11005073fb23a5bd4d06311f0be1d1e61a670b820d98454737ae1c11f29a66a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3bd00295b1b46a55aa7d4a15996c34067539d9867032ae31da8bce8a290ca1f`

```dockerfile
```

-	Layers:
	-	`sha256:9d1e9adfa6f6c71ad7346467ea4e5f0ac77e74f32331e360464fb35cd461ffa3`  
		Last Modified: Mon, 16 Nov 2026 18:10:32 GMT  
		Size: 9.6 KB (9601 bytes)  
		MIME: application/vnd.in-toto+json
