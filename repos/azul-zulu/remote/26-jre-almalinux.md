## `azul-zulu:26-jre-almalinux`

```console
$ docker pull azul-zulu@sha256:dcb70a8a82fc6ce47ac978c4c07ac4bb0760491c9eb52bbf76425c5a5ff79215
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:a94573c7985e42364418167deb872cb03e3162ac57db2100231d8bdee52b6df3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.6 MB (160564878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20d6c16c077bb5f90bed0759e612ab79a9c39fbea480f7d8a17f5bf988a42c85`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:13 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:13 GMT
CMD ["/bin/bash"]
# Wed, 02 Sep 2026 22:17:32 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 02 Sep 2026 22:17:32 GMT
ENV LANG=C.UTF-8
# Wed, 02 Sep 2026 22:17:32 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jre-26.0.2.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 02 Sep 2026 22:17:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Wed, 02 Sep 2026 22:17:32 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:653c5d8d0d6694b5f22ff2c258227792bc61603c5743f59b2221eb24864d05d3`  
		Last Modified: Wed, 02 Sep 2026 21:53:28 GMT  
		Size: 68.9 MB (68862668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1e91b4365033e07a68d5d72d6ab1abddf3285070f0619c33a92c0ee569d2c89`  
		Last Modified: Wed, 02 Sep 2026 22:17:46 GMT  
		Size: 91.7 MB (91702210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ced62e0eb170821a0d6281ff1fc01caea3714a497b11e4a9388e743c45fe4710
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 KB (9144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f85c4675106ee308f8f045448236084d877ca4409b7aa552950b722311f66849`

```dockerfile
```

-	Layers:
	-	`sha256:7d04114c911ee212fef50998e0940776bad2343290534b03c0183beb2ab8773d`  
		Last Modified: Wed, 02 Sep 2026 22:17:43 GMT  
		Size: 9.1 KB (9144 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:480ed5a768bc018a9de0987da955bd4de43f35c808d5e32f9673fc314d5deffe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.1 MB (159055767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08f1f13242ababe84262dcb63db35812042b1e2655ea6ada538a27dd6457d3d0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:16 GMT
CMD ["/bin/bash"]
# Wed, 02 Sep 2026 22:18:46 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 02 Sep 2026 22:18:46 GMT
ENV LANG=C.UTF-8
# Wed, 02 Sep 2026 22:18:46 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jre-26.0.2.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 02 Sep 2026 22:18:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Wed, 02 Sep 2026 22:18:46 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:802b840a8d25ea1358a31fbc4ea7c8131247ca176ca97b5f148712b005031c7f`  
		Last Modified: Wed, 02 Sep 2026 21:53:33 GMT  
		Size: 67.4 MB (67431802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3605b47ed34e0cfa230e9ed0ba2c701b4c6e868ae3c17669ed5d761b88517f43`  
		Last Modified: Wed, 02 Sep 2026 22:19:01 GMT  
		Size: 91.6 MB (91623965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c9d4c11db28c6f8acd2c143c24a0e0a45aa03eb8b047cfbd33f54234e5288920
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ddf82da56a1a8d1be374df43af519c97c5aeec65889c6436334776bec0e9c08`

```dockerfile
```

-	Layers:
	-	`sha256:7fb81b225e6c18b803558e2a86dac3c699a126a18898171d38e3b5940acd8adb`  
		Last Modified: Wed, 02 Sep 2026 22:18:58 GMT  
		Size: 9.2 KB (9236 bytes)  
		MIME: application/vnd.in-toto+json
