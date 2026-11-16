## `azul-zulu:21-almalinux10`

```console
$ docker pull azul-zulu@sha256:28409f86b1f0053958d2d98685b6d1fc018fc31288e5b29d724c58f495b3acfb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:34257c7764825cce6ad6c68f5738ba7b45c0ba682349d28461c7b4c3373c7260
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.3 MB (234341053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11cc359c9a0bda4b2366ff960e3d37bf2545079c9adc679a02c18b542ba96f80`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:04 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:04 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:10:43 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:10:43 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:10:43 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jdk-21.0.13.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:10:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Mon, 16 Nov 2026 18:10:43 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 18:10:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d3706e31ba51bfd08aeb09ac0ebbf184e0118db10938a31a3f2e81cb6a30eb58`  
		Last Modified: Sun, 15 Nov 2026 10:39:35 GMT  
		Size: 69.1 MB (69125779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1961f9f65fd7c7c45194ce7c0880484c89d945f6ec75ae9aa3ae5a260cb191c`  
		Last Modified: Mon, 16 Nov 2026 18:10:59 GMT  
		Size: 165.2 MB (165215274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b83d3f238350030f186a2f4d88a81e3bfaf155f06ba80f808db6ae35538580b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cc1cca25eaf7dcb6046b49250bfb698d6d0b010feabdec2ebf333d8eb02816f`

```dockerfile
```

-	Layers:
	-	`sha256:b86d3ba8d9b5398f4d921cbbb90bb283b9b84421a01699e3cda9e6a136d5ffdc`  
		Last Modified: Mon, 16 Nov 2026 18:10:55 GMT  
		Size: 9.5 KB (9498 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:244d62e31b6d4530543e10f7bb7f934d8779680adb405e25b8d3f58d8aa31a31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.2 MB (232232175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:175f4894e12d263c7c83bf27b61286a0c53be93fa22d01ba2e0ab9fb12fe0fcf`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:01 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:01 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:10:33 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:10:33 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:10:33 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jdk-21.0.13.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:10:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Mon, 16 Nov 2026 18:10:33 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 18:10:33 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a8ea85215dba158c09933d2c53437e503eade277c558f76de4290ce32293adac`  
		Last Modified: Mon, 16 Nov 2026 03:15:03 GMT  
		Size: 67.7 MB (67697816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d574f0fc984fad37d56ea159ca2681ef0ca1fa258c569868e6b4952613b2dec2`  
		Last Modified: Mon, 16 Nov 2026 18:10:51 GMT  
		Size: 164.5 MB (164534359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a7e33cb17426a3804f5bdc17cd1d13671589a9ccfce4b53a3cdc1f78de4c16d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b19a5a47eed38437f9f4973cdae57b4bdeb491084966287ba808367bfbcfe7a6`

```dockerfile
```

-	Layers:
	-	`sha256:2967ced5ca596eacf6756a7b28af0725c78c307594687ad469e801253a5c574e`  
		Last Modified: Mon, 16 Nov 2026 18:10:47 GMT  
		Size: 9.6 KB (9602 bytes)  
		MIME: application/vnd.in-toto+json
