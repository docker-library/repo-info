## `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:3711a1dc8e52e24c3e201c85e4f24ca78231d44426bbdd91519f6b2c64f5d92f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:c0baa144e3080a67f89a57e6a2b52b09d60ac93c18d6061652a98b7586e4d116
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.9 MB (242897675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a93f8064cb4951f8fa58717309dc085b27fdf6764da8af15ed9a98dd06103bce`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:11:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:11:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:11:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:11:46 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:11:46 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:12:04 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:12:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:12:04 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f434a011e8c1279d7d3ad47ad17ca8d63454290861291af4b15b46cdf633c5a`  
		Last Modified: Tue, 06 Oct 2026 02:12:25 GMT  
		Size: 145.9 MB (145864177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f520bb6620af3182ce112a2b33051b84bcb60c3ebddfdf6994434ca5a2ae63f9`  
		Last Modified: Tue, 06 Oct 2026 02:12:24 GMT  
		Size: 68.8 MB (68783529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9964e099f1a4d072723cc8d73e1aa6a69fbe4983c13ddaf314bee61c6636dc6f`  
		Last Modified: Tue, 06 Oct 2026 02:12:21 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e4787ce7f7c3e266637a0de8dc7b6a0e438d15152e7d77f41b5c8acd4e3f8beb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5153245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcea996e5c832a918668db10b619934aa3dac5e13a6dd638f51ab921c739c572`

```dockerfile
```

-	Layers:
	-	`sha256:9d3edee8793fd88fd08a5db73945b38f397377b42b61fd99007d2a7ea0226733`  
		Last Modified: Tue, 06 Oct 2026 02:12:21 GMT  
		Size: 5.1 MB (5138824 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6bede4f26cdb2247851d146cad1a90a95f85cfdeb8fef4e30f79947ad08217d7`  
		Last Modified: Tue, 06 Oct 2026 02:12:21 GMT  
		Size: 14.4 KB (14421 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ef4de3801c1993bc553a2d823bcc875ba3100d6cfc81b674eb1986260b93e94f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.4 MB (239445888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f49a959fef2c9a266d060892602965e34f19a3f3be502cf3ae62bab6bd007b7`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:17:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:17:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:17:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:17:45 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:17:45 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:18:03 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:18:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:18:03 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51242a5eab062a7af44644c986166d5f8975328f0d5d5cab6a1c131dba83de62`  
		Last Modified: Tue, 06 Oct 2026 02:18:25 GMT  
		Size: 142.6 MB (142576499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c052fe6f902629b0d2d64f67c343ef9d302763771030214915b97bea9032d1d0`  
		Last Modified: Tue, 06 Oct 2026 02:18:24 GMT  
		Size: 68.7 MB (68731564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab1b0aab890225876fdb5a9bb106f1c39e309ffb920e3d004681bfb723a44f22`  
		Last Modified: Tue, 06 Oct 2026 02:18:21 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4c527a5b0c62ada89469350a0340461821a52b167289e9df9b311424564ecdbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5159742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86c49a53d4d7ada74e0bd95361149f6d290fdac8e4986f7f876e6b3bf4090227`

```dockerfile
```

-	Layers:
	-	`sha256:37cc39463176e87028ebcab4bc563d0a864cb3baf526689359c8cc4743333897`  
		Last Modified: Tue, 06 Oct 2026 02:18:21 GMT  
		Size: 5.1 MB (5145203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d8d52f11d59530869d6f83998d254ff445132c011d5ead50c46f990b89865d8`  
		Last Modified: Tue, 06 Oct 2026 02:18:20 GMT  
		Size: 14.5 KB (14539 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:aabc1bf1156a5261ff3e5eb98546dfd61907be5298aa819b139495b4fe681fa3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.0 MB (239954504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52a5bd478f1a82bde26298c3a94a64f98e6bfd20ef863a832e104c7b0dbc9d2e`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 09:47:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:47:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:47:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:47:25 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 09:47:26 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 09:58:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 09:58:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 09:58:30 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92fd1244a3ae8c40ba613f2d1ad1c4595497287e0e37271624575483df456400`  
		Last Modified: Tue, 06 Oct 2026 09:51:42 GMT  
		Size: 133.1 MB (133094694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8822e61f7b57c8b42033450ad13b3050196b035e106a49d35dc968dac9191a4c`  
		Last Modified: Tue, 06 Oct 2026 09:59:09 GMT  
		Size: 74.8 MB (74766728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba8764f0a435c6006d1b95e17c3734976f7b52f0f32aa2e83bf0bdd148b5481e`  
		Last Modified: Tue, 06 Oct 2026 09:59:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a651b08c38694eb2c84970d9ec9a0211e83c19424c441e44768a5ca46fba6190
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5157835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b468b19e6ef21e92858de8c6148ac3e78c5f2e35e45687af9c37e9f3d962ff5`

```dockerfile
```

-	Layers:
	-	`sha256:37686d0216d28cc1e0a4571bdc4c290fbd3d00877ef9699cb07e94345f7ff46f`  
		Last Modified: Tue, 06 Oct 2026 09:59:08 GMT  
		Size: 5.1 MB (5143367 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eadc95ecc590989a76b00b36893555accc94204c9ed3a749f97f18e90b8df338`  
		Last Modified: Tue, 06 Oct 2026 09:59:07 GMT  
		Size: 14.5 KB (14468 bytes)  
		MIME: application/vnd.in-toto+json
