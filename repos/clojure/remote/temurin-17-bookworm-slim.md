## `clojure:temurin-17-bookworm-slim`

```console
$ docker pull clojure@sha256:0371fa71de2a377949949ebe563d6b808806696fb833bfc4cdb9f05ae8cf0ac3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:4f3495126c2899bec4dd739f9316ebeb21270117ae78f095c877df80481cb682
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240843375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d5aca1dd4ff67088cc78f102d821ca343c22c61644a38d9b1be57bf0cdf6cb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:08:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:08:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:08:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:08:45 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:08:45 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:08:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:08:59 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:08:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:08:59 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:08:59 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15f8cc0b2069a6228cd91abbe7f54c966799c974b34e821b3480fe62a0021cf4`  
		Last Modified: Thu, 05 Nov 2026 08:09:21 GMT  
		Size: 146.1 MB (146086189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f00623777cc8746752de38ac5ae61974a20ef53cce5c13cbfdbae4029bb96bdd`  
		Last Modified: Thu, 05 Nov 2026 08:09:19 GMT  
		Size: 66.5 MB (66508159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:352f18bb5c17cec33d8411ec8b813ef19c2850945cd059a6f11c39888373c3ad`  
		Last Modified: Thu, 05 Nov 2026 08:09:16 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42971673854bb95d94972e34990f9e4ab03c39127d8ef3304029ee8c5dd5c3bb`  
		Last Modified: Thu, 05 Nov 2026 08:09:16 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:bb6182b2be7e9637ec7861f2d3f29b8b75f6a4aaca166c0fe674b240adfbc81d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5134095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b555896e40714bf780f04a38d6139e1727a2174c45c15488c5f73cb8a2031d85`

```dockerfile
```

-	Layers:
	-	`sha256:540dff40c2cae109a0a52df4ecb45b937ebbe0380bec3348b42f19f61c06f6ae`  
		Last Modified: Thu, 05 Nov 2026 08:09:17 GMT  
		Size: 5.1 MB (5118105 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:831839360083fe693151e46d896124a2425b08d7a1ceec6fc84a2deda8b73bc5`  
		Last Modified: Thu, 05 Nov 2026 08:09:16 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f37b58b1eb51a635d735df3d38181b1343985008d799af6edc081bcbb3c3f083
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.6 MB (239602798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc8d569160735cec1d86e7568efca840283deb6f42e03735d29eca11a954c748`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:17:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:17:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:17:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:17:44 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:17:44 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:17:58 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:17:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:17:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:17:59 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:17:59 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47a7b463a11d6d8ea1a315d42f58d2295097f935e8a3523ff3db3271e9e4f76e`  
		Last Modified: Thu, 05 Nov 2026 08:18:20 GMT  
		Size: 145.0 MB (144957161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f55abdf736c61ad7adb7333573621fd7d82f8b48ef4a5c98f7f9a940b139a7b8`  
		Last Modified: Thu, 05 Nov 2026 08:18:19 GMT  
		Size: 66.5 MB (66500235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97fcd7461e529d522eee5ad94c7d59362de04189146c5e823f2fd6db9302eb0b`  
		Last Modified: Thu, 05 Nov 2026 08:18:16 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4330e7e4f3d03daad87718ac11340caada848fc1f653f753b16eeeac7373b7fb`  
		Last Modified: Thu, 05 Nov 2026 08:18:16 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:97420b40b056f5d1dbc70afd000cd2cd328f9c187f0c5a8e353bbc903b075cf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5139973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4156ff0000dc5417123415909c607e4aa57706b881fa92ec9a846b6049e4a5c4`

```dockerfile
```

-	Layers:
	-	`sha256:63cafb43edcc474bf1bdf92a2e9b67cbc6633842d392350d630ab8b0315ec55e`  
		Last Modified: Thu, 05 Nov 2026 08:18:17 GMT  
		Size: 5.1 MB (5123866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfa466f080bc27b8a200ba23e1d16e2d802f11b72a61cb8a4057c11c3aea4d7e`  
		Last Modified: Thu, 05 Nov 2026 08:18:16 GMT  
		Size: 16.1 KB (16107 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:579f124f2332210ad2746225c3caaa7c8643cc482e86efcdf09aab9627ea1479
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.3 MB (249288877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6cf5cefe46d34bc49fde795010b37f328bd40f9edccdd588a1b30107dcd9dac`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 15:36:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:36:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:36:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:36:34 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 15:36:35 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:44:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 15:44:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 15:44:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 15:44:32 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 15:44:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f49bb31fa4370be1b5da85fd3daceac235b0934e95508bb9b0a4a7473576892f`  
		Last Modified: Thu, 05 Nov 2026 15:41:20 GMT  
		Size: 144.9 MB (144860469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0bddacf7e54ad43585261968f1610254d20e98a4f7a0ce1b3146023cc989100`  
		Last Modified: Thu, 05 Nov 2026 15:45:08 GMT  
		Size: 72.3 MB (72333806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67bdf337a9c14f779ac174aa732c3945a1ab417e940995bfadf3ca46bdd5f346`  
		Last Modified: Thu, 05 Nov 2026 15:45:06 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f244549a1a81dcee864727959c9f18055480c92df38d565d838070afbc48a62b`  
		Last Modified: Thu, 05 Nov 2026 15:45:06 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:70d3a47841483dba3d9b10f1216ea2492db31001c01d58d01374d674411d20df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5138055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a215b9ed7e93940d66aa1d5db951aac056c45b5088c8f06498b65026d985ab66`

```dockerfile
```

-	Layers:
	-	`sha256:aa31fc86f252dd3d5320d0cceb0defa314a0ed25cf07113335972f17ae7df0d6`  
		Last Modified: Thu, 05 Nov 2026 15:45:06 GMT  
		Size: 5.1 MB (5122017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:791f418c40c341df6a41145216bb6778699d6d34864fc49bde910672190d11a3`  
		Last Modified: Thu, 05 Nov 2026 15:45:06 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json
