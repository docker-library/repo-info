## `azul-zulu:11-jdk-almalinux`

```console
$ docker pull azul-zulu@sha256:4c6cae26d69d2c1c52a79e2364e3c600debeb70f2fd0c45c898f025cc249d593
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jdk-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:779970cdc93b35635c241ec3dd788e5ec17008b1c4f6c34241c5e8d7b7ba3007
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.1 MB (217117115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19f42fa9e921b49e4ef6c164ee314d4bbdb00d7809c2c9f97e75aeba42d94c2a`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:20 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:20 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:09:22 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:09:22 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:09:22 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jdk-11.0.33-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:09:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Mon, 16 Nov 2026 22:09:22 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 22:09:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f7eb2ddfe716bbe5a789e107fd8eb761cff0982c7444fc8f71ff2bd32513a061`  
		Last Modified: Mon, 16 Nov 2026 21:44:37 GMT  
		Size: 69.4 MB (69370480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd950a3b1c1226c6019f96979d176c050b8750b0b98f6ef4ed2e07b60b2d572`  
		Last Modified: Mon, 16 Nov 2026 22:09:36 GMT  
		Size: 147.7 MB (147746635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:af492663837f2b33c212d488deba4205cba0d133a3b70100f646a96ab896587c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d3768fd20b552522f7af2590ace9480ea774913de1118bb19747a85728b02f9`

```dockerfile
```

-	Layers:
	-	`sha256:bdaf485d910ee0c37870712f9be35e18ba357d1865f90a83ce72a01aa3dc14e1`  
		Last Modified: Mon, 16 Nov 2026 22:09:32 GMT  
		Size: 9.5 KB (9482 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jdk-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:3804ecb1ac3e03b6cd63056f8997ba067965bb986a6459254ec55c70866e23db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.4 MB (215375911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16c933db25ac2340b97550c472c090bf5af3a6fcb7443a637964c66478172194`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:35 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:35 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:09:14 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:09:14 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:09:14 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jdk-11.0.33-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:09:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Mon, 16 Nov 2026 22:09:14 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 22:09:14 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:393cd084864e1edb3d8b62a1faef8c3a32a405ba52f353858c2898cdbb0f08cb`  
		Last Modified: Mon, 16 Nov 2026 21:44:52 GMT  
		Size: 68.0 MB (67950574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bc7043f8f0bdcb08c16e235d8be24d77365f1be08cab50a7edc4cd29e7cc11b`  
		Last Modified: Mon, 16 Nov 2026 22:09:29 GMT  
		Size: 147.4 MB (147425337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:15d8ff814aa58ce83af668f4db1348a9958e278c4eec1c19749102abd7d1008b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b02995431495d31195e3778617810cad5d92831d909c8d110a97b2c2504fd992`

```dockerfile
```

-	Layers:
	-	`sha256:11f4bd87b60bcff2de99ce0fd62b339a7d644a207f7deb0f03cb482ee73310c3`  
		Last Modified: Mon, 16 Nov 2026 22:09:26 GMT  
		Size: 9.6 KB (9586 bytes)  
		MIME: application/vnd.in-toto+json
