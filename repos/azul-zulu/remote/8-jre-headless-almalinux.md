## `azul-zulu:8-jre-headless-almalinux`

```console
$ docker pull azul-zulu@sha256:6a225de6d729a775097e0ef11dcf3a5f8fe07f10a4c488af5574abc9299fdf31
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-headless-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:b38de7d889c5558af10949b05e661ae24f7800f83b794aeccf86cd57f086d958
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117247520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e0ea048b0b45af2c6bbc6625f2e3b15103d52d49855f84a5b77c9de5817bca7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:42 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:42 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 20:00:11 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:00:11 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:00:11 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jre-headless-8.0.512-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 23 Oct 2026 20:00:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Fri, 23 Oct 2026 20:00:11 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:aa40d510fc6e470a2f5bd27e447ebfe9df24b41b10a52ccfb13fe5a7e461a36d`  
		Last Modified: Fri, 02 Oct 2026 18:17:00 GMT  
		Size: 68.9 MB (68879554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37abca240fa2a465ff830221ebefc3e612a83939d2d1853aac0d23057cea3ba5`  
		Last Modified: Fri, 23 Oct 2026 20:00:21 GMT  
		Size: 48.4 MB (48367966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c1bd560343328a6036a7ef86a2055f12104f43e7f73a8262e01e40cc5e7c8aba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44fe5b01cbcd5ef25181e63c8c2c1955789a04446f953d05257f9a7d5613a252`

```dockerfile
```

-	Layers:
	-	`sha256:638d49f944cdaf662475b0d9be25a53b8dc846e6ee6e1e437fe30365a9fbdc32`  
		Last Modified: Fri, 23 Oct 2026 20:00:20 GMT  
		Size: 9.2 KB (9221 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-headless-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:6431db6d67fe11cc7824fe7bd07f9fcf9458b51dd894f8e23cfab95c4c02ebcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.1 MB (116065328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83078fbd5a33163453e55dc6e3dc2e017cffc179b2a44bba94d46684628460c2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:16 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 19:58:10 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 19:58:10 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 19:58:10 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jre-headless-8.0.512-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 23 Oct 2026 19:58:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Fri, 23 Oct 2026 19:58:10 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:72828735570afd8ff6fa969666f806b8b8aad35a219161ae6386607e517a0ff3`  
		Last Modified: Fri, 02 Oct 2026 18:16:33 GMT  
		Size: 67.5 MB (67458184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f389d9e41cea46bf92d99542abdfc111343be9f7974a21686329129497fe82cf`  
		Last Modified: Fri, 23 Oct 2026 19:58:18 GMT  
		Size: 48.6 MB (48607144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f1ae4d36518ac7ff05c1f2b3941190e707fe1ced443c5546a202644af9c6aaa5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ac07bf7a3255021bd171ac14b980fbc3a12fbc890cbdb79a9010fed9674bc5a`

```dockerfile
```

-	Layers:
	-	`sha256:4c2a38ae43f7a46a3fcf7c52b715d914c25bd383f3f949801b56723ce2e0ace9`  
		Last Modified: Fri, 23 Oct 2026 19:58:17 GMT  
		Size: 9.3 KB (9313 bytes)  
		MIME: application/vnd.in-toto+json
