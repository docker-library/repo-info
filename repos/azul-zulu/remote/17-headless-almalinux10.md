## `azul-zulu:17-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:effa716d7833de31ad196118b04bbd063fae539b13857532f43c969d30912237
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:618d5a237c0ff4f950d2da3bc0576b1d8d7cfcca9804c8802ffc719a20823d68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.7 MB (220713424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8b2f5ec743f996ac609777d4db88afd90e30c73212c1933596fbb753499c2e1`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:20 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:20 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:09:41 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:09:41 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:09:41 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jdk-headless-17.0.21.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:09:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Mon, 16 Nov 2026 22:09:41 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 22:09:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f7eb2ddfe716bbe5a789e107fd8eb761cff0982c7444fc8f71ff2bd32513a061`  
		Last Modified: Mon, 16 Nov 2026 21:44:37 GMT  
		Size: 69.4 MB (69370480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f1d9e31b150dc0d23918d01a83a1f55589dcc3bc29e7c6d3d83304b7ce52dff`  
		Last Modified: Mon, 16 Nov 2026 22:09:57 GMT  
		Size: 151.3 MB (151342944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f0947794209a3083c967519b1bdb5e09c77e5b74a8525c4d2a59a43313c2e938
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1672e33816686d26a0765dbc6e2db1f2f4de907bb456447bdecc3884c0e874f7`

```dockerfile
```

-	Layers:
	-	`sha256:98aced9453c10270614e0d28f4f7cd856565f2b9ca0db6401f0db7bfff828a61`  
		Last Modified: Mon, 16 Nov 2026 22:09:53 GMT  
		Size: 9.3 KB (9255 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:904eee378c4ca78005cc883ebfbea46211d5b44f39ba5a0986d8c790de882836
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.3 MB (219346260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8334afd429ee9ab10e79e1f75268bf46a198edc23451936b466fcb27cc72e10e`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:35 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:35 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:09:38 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:09:38 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:09:38 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jdk-headless-17.0.21.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:09:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Mon, 16 Nov 2026 22:09:38 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 22:09:38 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:393cd084864e1edb3d8b62a1faef8c3a32a405ba52f353858c2898cdbb0f08cb`  
		Last Modified: Mon, 16 Nov 2026 21:44:52 GMT  
		Size: 68.0 MB (67950574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66c88cfdabc36b669ed380f5edc49918acea5024f84c603cb9eaa36010dd3be5`  
		Last Modified: Mon, 16 Nov 2026 22:09:54 GMT  
		Size: 151.4 MB (151395686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:5ebf8502f0786a7b3c01a1ba9cd0419ae066269d00f8b55566492f54357a1249
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21a5582ab322b18b84ad50e1085f22eb85b70ca564511a77c0de86990c4897b5`

```dockerfile
```

-	Layers:
	-	`sha256:6dc1803c16caf6092ef387dc0df82274bd8e8c14499bddfe8da81f8fb3e7acba`  
		Last Modified: Mon, 16 Nov 2026 22:09:51 GMT  
		Size: 9.3 KB (9347 bytes)  
		MIME: application/vnd.in-toto+json
