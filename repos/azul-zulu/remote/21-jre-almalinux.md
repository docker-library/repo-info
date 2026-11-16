## `azul-zulu:21-jre-almalinux`

```console
$ docker pull azul-zulu@sha256:9cb4c7fe97d029b4f75034c1ee54a49cc87e75e6b4880e5606a75f92818a6af3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:fd0d2a7aed92e807f229210e84f7da9326160ccb1e0b45315c38b25b31bef950
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.9 MB (145899773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bcd6e1569f6ecaa601e9c4e1c8b1bb6d7207aaa8e1fb52331f488ecc0f82d96`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:20 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:20 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:09:33 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:09:33 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:09:33 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jre-21.0.13.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:09:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Mon, 16 Nov 2026 22:09:33 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:f7eb2ddfe716bbe5a789e107fd8eb761cff0982c7444fc8f71ff2bd32513a061`  
		Last Modified: Mon, 16 Nov 2026 21:44:37 GMT  
		Size: 69.4 MB (69370480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6ffd67b2c574e693f17affcceb6e843c639404e9cf6aee51b59119cdfcbd35`  
		Last Modified: Mon, 16 Nov 2026 22:09:46 GMT  
		Size: 76.5 MB (76529293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3717e8291054546dc8e8612042002506b35bd5d4a059924c77edd3240b3f7330
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddaed971d4a012f3becea75b8aeef77b1c0c97b6b4abf006d8e5f74b9f043be5`

```dockerfile
```

-	Layers:
	-	`sha256:733fbfebbece0bc70c2df8615fdc2caf88570f146cc60c15a841e9a6484b0aca`  
		Last Modified: Mon, 16 Nov 2026 22:09:43 GMT  
		Size: 9.2 KB (9156 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:4ed6aef05c3b4a98b31cf605a057320fbb7857de39e3fcf2b106e5450d50490e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144127275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04e55002bbce13b05bc4592988e396a86936ca188f47456b0539d396f5fe46ff`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:35 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:35 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:09:19 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:09:19 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:09:19 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jre-21.0.13.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:09:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Mon, 16 Nov 2026 22:09:19 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:393cd084864e1edb3d8b62a1faef8c3a32a405ba52f353858c2898cdbb0f08cb`  
		Last Modified: Mon, 16 Nov 2026 21:44:52 GMT  
		Size: 68.0 MB (67950574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79230fccab0ba230c9e464223be5863967609410a4b7400eb666e291fe5671ec`  
		Last Modified: Mon, 16 Nov 2026 22:09:33 GMT  
		Size: 76.2 MB (76176701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:aaa06643602cd504ebc45f0f2b0fad74aa42e76b960c8cecd1804092f3f99c7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66d74ad21c60fb211d63d0f39a2142cc7af2b8f76737367b01f689303df6058b`

```dockerfile
```

-	Layers:
	-	`sha256:8aec8834e24e755b109364d26c0b8cb780cfed0d3c362cc2f4326c9de970d765`  
		Last Modified: Mon, 16 Nov 2026 22:09:30 GMT  
		Size: 9.2 KB (9249 bytes)  
		MIME: application/vnd.in-toto+json
