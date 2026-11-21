## `clojure:temurin-17-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:b72aadecc31dd9fff74ad1f4765b067abf657037968c9ec2126e3543f2402e28
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:c30da81cb86cc339b611e4702180a04da9e9f2aaf7b92878f8ce967a3365928f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.9 MB (240875191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:749bd53124728e93f44b90a83ccbd66bd3f7be4235a13fd45348e812e886fbcb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 18:08:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 18:08:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 18:08:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 18:08:41 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 18:08:41 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 18:08:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 18:08:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 18:08:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 18:08:55 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 18:08:55 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0efe12366807aa35079907a1897682adf0a8d80da2aba0f755ff407c0149197`  
		Last Modified: Fri, 20 Nov 2026 18:09:16 GMT  
		Size: 146.1 MB (146114218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfa7541a4020eba1c9e07093e960f788e164d36b8a6ec2697c415306b02e1588`  
		Last Modified: Fri, 20 Nov 2026 18:09:15 GMT  
		Size: 66.5 MB (66511442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c7e2e8dc78e7ed044e9a3f132c0dd20a591fe7bd26c7c1410c88b099f7f2a5b`  
		Last Modified: Fri, 20 Nov 2026 18:09:12 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82f8a8fd93b632d4740ac90ce3c8c1fe766478d72605ebb390f48991b57b2fea`  
		Last Modified: Fri, 20 Nov 2026 18:09:12 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0d465ecdb1e6285a8aa583ebeb72ac4dcaec15e2a47834f65b7d214caca516e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5134105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1142f91d47f146c9a9dbed809989c91a28a7ebe0c4aface77228655d00d8921b`

```dockerfile
```

-	Layers:
	-	`sha256:320d34718002e248e9c7e99f4e5b19150ccc4aa53406970e1fdf623362d8c986`  
		Last Modified: Fri, 20 Nov 2026 18:09:12 GMT  
		Size: 5.1 MB (5118115 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f28a25c010ede0d25975812007a500ab03904a47e0e8295f858ea67eb722546`  
		Last Modified: Fri, 20 Nov 2026 18:09:12 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:dc3baaab610402b7dde612e058cf6e7f92905ae56a5659ce51365520f2be14e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.6 MB (239599951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a2d51d7617eb8eb200c031fbbdf4ba47bd0f250238078ccbc5a8d6f29b5967c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 22:06:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:06:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:06:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:06:41 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:06:41 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:06:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:06:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:06:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:06:55 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:06:55 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8de81aa0a466fb5ce1feab882a993ad841d3dd1b0642d72e9009c5ac4f7d3c7`  
		Last Modified: Thu, 19 Nov 2026 22:07:17 GMT  
		Size: 145.0 MB (144957162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7948760ece31c394873646dbf579de23e0bc25c28f31d76d56aed723293a104`  
		Last Modified: Thu, 19 Nov 2026 22:07:16 GMT  
		Size: 66.5 MB (66496884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:948b04cb1c46770e685bda7090e66d834b3a8aed0a9468575f2e25892d05740b`  
		Last Modified: Thu, 19 Nov 2026 22:07:10 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d0158da500095f00538493067d453126c1fb427790dfb13f690a0652970a0a`  
		Last Modified: Thu, 19 Nov 2026 22:07:13 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6a0cba0995ee44901db04fd9411e965d00776fd79d795b71daccd2f6c1204cf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5139976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e79af8ff4aa5ee5231c2f355f14ff13817fa549931fb6645c8ae5c7386c08ac`

```dockerfile
```

-	Layers:
	-	`sha256:9c3ac34fdf5d29e2ebd5a1a4ee6839c0a61c08b5850b9d7b6a4484adc61bc902`  
		Last Modified: Thu, 19 Nov 2026 22:07:13 GMT  
		Size: 5.1 MB (5123868 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45ee109c9c2f100d198f95c4e085951f2672482e823b9a188bce1fbbb8d95b55`  
		Last Modified: Thu, 19 Nov 2026 22:07:13 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:01f9686514d7209f23f9f38b319f9c4ff23f461e2c5b7117c55a86657fe6463b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.3 MB (249321829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6534243e929e9022ea034edd62f7bc703a59923b46c0171c495a7700ce8821e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 19:14:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:14:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:14:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:14:28 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 19:14:30 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 19:25:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 19:25:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 19:25:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 19:25:26 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 19:25:26 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a224f32b4613abcec12974810a9ee61a493bd8337f9f6c0b67261fd488c02044`  
		Last Modified: Fri, 20 Nov 2026 19:17:56 GMT  
		Size: 144.9 MB (144892615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f13a36da401b7d66265d673cb0205cbddd8225d91b434e1b2361b50ab9df898`  
		Last Modified: Fri, 20 Nov 2026 19:26:04 GMT  
		Size: 72.3 MB (72334104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d66988042742008ca31b008a323fb47b83373ce7d9dac8ae7a3afbfa723cabf8`  
		Last Modified: Fri, 20 Nov 2026 19:26:02 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d55d114385827834046fbd467bbe11942a2f8d297e3a32db3122dc6ab0881675`  
		Last Modified: Fri, 20 Nov 2026 19:26:02 GMT  
		Size: 902.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:91b3b00ffb5a227f5c99cf842ec8e3da8cf88acf67d677ad75e9fbc47e4add4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5138065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b26c0f739b64ccec791215f4625027b8058eb2e5ac9d5327341f9c8d225e889f`

```dockerfile
```

-	Layers:
	-	`sha256:d19ad7f9329ecd94287071d167e52911ec0c9e1b53e11fefcb9119b497cb912f`  
		Last Modified: Fri, 20 Nov 2026 19:26:02 GMT  
		Size: 5.1 MB (5122027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89058ee1f00a362dae18e0288f8e40587c6b0cef07e469e35c0554ac0358d475`  
		Last Modified: Fri, 20 Nov 2026 19:26:02 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json
