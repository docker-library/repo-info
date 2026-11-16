## `azul-zulu:17-jre-almalinux`

```console
$ docker pull azul-zulu@sha256:c9ad87d5a602511ace5fc1e845acf1a348876294eb192a9f94e94446467f53c5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:8c6d3538d901560a1351f70e9208f0063b28e9ae6030e618ea9962b638b76e81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.6 MB (140605042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:991ec260b3b97ae51865846bd747be7dded4ddb9c156c607cf2a763a8379b667`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:20 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:20 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:09:06 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:09:06 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:09:06 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jre-17.0.21.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:09:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Mon, 16 Nov 2026 22:09:06 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:f7eb2ddfe716bbe5a789e107fd8eb761cff0982c7444fc8f71ff2bd32513a061`  
		Last Modified: Mon, 16 Nov 2026 21:44:37 GMT  
		Size: 69.4 MB (69370480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7710d3a5ac946295be34e50042557ea263f9644c4381554953bffe54c5d4d61b`  
		Last Modified: Mon, 16 Nov 2026 22:09:18 GMT  
		Size: 71.2 MB (71234562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:0bfbd39c84c4f4415ef8753ed3fe12bd54ddfbd1c6c94beab604f3b8668f0aae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0235951f8761af384ae3dd78049d9f25d40d60060f6050e6f879e615e2e089fc`

```dockerfile
```

-	Layers:
	-	`sha256:a89c9f6544d96b5a50c931fa241083dac89a0be5a1f1d904e7eb9c19a97ccaea`  
		Last Modified: Mon, 16 Nov 2026 22:09:16 GMT  
		Size: 9.2 KB (9157 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:1afa4d1e0bb6cff7371b6f0dacb942e96fc86d618a31e1985d708ae00b53d061
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.2 MB (139237303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bde5117ca0429b7510c12cf850b69b78be20b937e2f5a95a42787de2bd4ff33a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:35 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:35 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:09:34 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:09:34 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:09:34 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jre-17.0.21.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:09:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Mon, 16 Nov 2026 22:09:34 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:393cd084864e1edb3d8b62a1faef8c3a32a405ba52f353858c2898cdbb0f08cb`  
		Last Modified: Mon, 16 Nov 2026 21:44:52 GMT  
		Size: 68.0 MB (67950574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ec64a04cb2137f8181a0e39bd39e7863e3af58a2601659c12b14050473d6353`  
		Last Modified: Mon, 16 Nov 2026 22:09:46 GMT  
		Size: 71.3 MB (71286729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:98ddc0a17113c74f7b094551e34c02c06df6d3bb87680f62ce26c7d04465526d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:953b9d47cec8cc1c1bfcfedb3d88214f516aa24ffa9def3080de233d5f97a950`

```dockerfile
```

-	Layers:
	-	`sha256:e4aef89bf4d5716c816f03b0d7f4157ccad7cf8cae4573059535e0bc0e919bc4`  
		Last Modified: Mon, 16 Nov 2026 22:09:44 GMT  
		Size: 9.2 KB (9249 bytes)  
		MIME: application/vnd.in-toto+json
