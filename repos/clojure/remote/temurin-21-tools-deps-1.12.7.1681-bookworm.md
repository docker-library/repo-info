## `clojure:temurin-21-tools-deps-1.12.7.1681-bookworm`

```console
$ docker pull clojure@sha256:0bbd1980f5d1cc0adb1854703dea46118e1d4103b0fd832eab94d66dac6ff405
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-1.12.7.1681-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:04f86555e92e8248f0bd194837687785cefe73a556a80b1ea427bbb65ccd6e51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.0 MB (284970444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be4871fef65aa044776eb8baa68e6fc339c14f5937f66ec45efe75cfcc47d2c8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:11:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:11:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:11:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:11:33 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:11:33 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:11:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:11:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:11:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:11:48 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:11:48 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36b49e1fa9f994fe0b9fd72bd28da2b2d5e6a42dd340f160caa3464ec4c2bd7c`  
		Last Modified: Tue, 24 Nov 2026 05:12:11 GMT  
		Size: 158.4 MB (158440893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:104669840083baaaf1b5c09f2c0bcaf4c4ebb0c670e26b9a66bb72c22244c553`  
		Last Modified: Tue, 24 Nov 2026 05:12:10 GMT  
		Size: 78.0 MB (78001633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:342fa20228d689a3b7b0d45ec95b990b93d7d00815cc54eaf81d310bc1aaf6a7`  
		Last Modified: Tue, 24 Nov 2026 05:12:07 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89cc62da15bae9ce5f92e13992195d3a5262fb8ae3ac76e426ef7c21aafa8eb1`  
		Last Modified: Tue, 24 Nov 2026 05:12:07 GMT  
		Size: 895.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.7.1681-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:9732cdd89b6b45f3d143d938512f75b80a9acbfe59cff77114fc3cb102265f9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7397795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64f0af49b460335f6e1d12b730b0e340238ea91e674863a68800af0d24ba5344`

```dockerfile
```

-	Layers:
	-	`sha256:49e31fdf7e648bc7b76e8fc6db0623026a5b4dedbe37227b5aee4b290d983cf9`  
		Last Modified: Tue, 24 Nov 2026 05:12:07 GMT  
		Size: 7.4 MB (7381179 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e4cf5f11708abc1cbfb84093b4e36b3ab9d10ee0250646d251f0bb3f6da2b23`  
		Last Modified: Tue, 24 Nov 2026 05:12:06 GMT  
		Size: 16.6 KB (16616 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.7.1681-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f0311c409d6437199dc9b8befdda93f09608fdb8cdb93fe1e1ef222ee01d3bf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.1 MB (283102961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b92f4d66b3a71127b82dc3321311ff48937e81bd9d4afb5e805a70e66d22726`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 22:07:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:07:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:07:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:07:30 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:07:30 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:07:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:07:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:07:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:07:45 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:07:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20cba452040924d84fc45c12afe9c1a2513a114e3809cf59c3449c7391901fec`  
		Last Modified: Thu, 19 Nov 2026 22:08:10 GMT  
		Size: 156.7 MB (156691655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3117cf52db5dc8743f5593d1b8d1379af807659a914598c69b27159b146d1a21`  
		Last Modified: Thu, 19 Nov 2026 22:08:09 GMT  
		Size: 78.0 MB (77997308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b115cb5d1516487571a5123e0cf118429691eac0b5102dea442a701aa486c8c`  
		Last Modified: Thu, 19 Nov 2026 22:08:03 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90d83c047f71ca9155457992443f71806bd5764b20b0d6b4954229f594ca4c6b`  
		Last Modified: Thu, 19 Nov 2026 22:08:03 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.7.1681-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:a85bf26ea178bbca6ecd2dde8d258e913ae248106895a6d654aeca4e5b20604e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7403716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1ea2fbce84a1d4b987274422b24d95643fd3db8e66896b59414054dd392e6d8`

```dockerfile
```

-	Layers:
	-	`sha256:63a0c000d1000c44eb7f48fe3b965db5655dc576ab502a0beed765b81c807478`  
		Last Modified: Thu, 19 Nov 2026 22:08:06 GMT  
		Size: 7.4 MB (7386958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a172a7e413c07396466dd91394aff422bac8165ddd2812db11d85d9853da4f6`  
		Last Modified: Thu, 19 Nov 2026 22:08:06 GMT  
		Size: 16.8 KB (16758 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.7.1681-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:5906aa39e80f72cfc4f2f9d32947494a634acc1af934fc7ddccb513056aa7ae4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.8 MB (293790532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21278417184b286f14de005c7c99650a8433b70f4c172678773e924eda0577b5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 12:44:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 12:44:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 12:44:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 12:44:41 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 12:44:41 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 12:53:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 12:53:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 12:53:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 12:53:50 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 12:53:50 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:936a6a1e0c40eccb1f23047919ed843c0c969e4e372431764e94fd25b358e9c4`  
		Last Modified: Tue, 24 Nov 2026 03:39:19 GMT  
		Size: 52.4 MB (52368504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b39724fd29cfcc406a0f6535aa5d351070a92501854bc6ccb96c23f5f46df82e`  
		Last Modified: Tue, 24 Nov 2026 12:48:23 GMT  
		Size: 157.6 MB (157596526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f63c79e9f87d207a7d1c34f967ac487c4ae9750959e5816a006e6d1e14a55a99`  
		Last Modified: Tue, 24 Nov 2026 12:54:38 GMT  
		Size: 83.8 MB (83823960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2be6c504fce6d5c5081c97bf3bbc5d33a4378031127e065472740f3452f02ff`  
		Last Modified: Tue, 24 Nov 2026 12:54:35 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63f7d5816c774e39c85519b81148ae79a1318f5f251ccacee356b7fb2304d618`  
		Last Modified: Tue, 24 Nov 2026 12:54:35 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.7.1681-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:c2b916bafe02b77e8b3878af2dbbe24e1d1daa338c3cf88e93791c651f27b73a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7401832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:631acd461c1f2ab09db0217f626219783ddc51cef86d6931a4d6ace072c9578a`

```dockerfile
```

-	Layers:
	-	`sha256:bba3e08d3d57e8edff261e366f5ce43da32840ff958c4f66704377d433089d1a`  
		Last Modified: Tue, 24 Nov 2026 12:54:36 GMT  
		Size: 7.4 MB (7385157 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfeda06a1ab104c015127beb7f31a3fe62dbb284cb39ff0df268b9fa390ff4cc`  
		Last Modified: Tue, 24 Nov 2026 12:54:35 GMT  
		Size: 16.7 KB (16675 bytes)  
		MIME: application/vnd.in-toto+json
