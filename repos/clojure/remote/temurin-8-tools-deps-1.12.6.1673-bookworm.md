## `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm`

```console
$ docker pull clojure@sha256:bdf371d14dd508b1b740fdb20db93982842aadeadea0d78253e24f9b257516f1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:ecf54e297c0565d533f76f9c239759e3dcf0e283f20a5170128636184f5789bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.8 MB (181835923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eae656d6eec74aa29af18367872d6fbb67d94df25196dc20040a3f29e2e2abf`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:31:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:31:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:31:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:31:45 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:31:45 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:31:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:31:57 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:31:57 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e5399ef60c8fd9478a37c831c54952700f858287ee4553ee53755a073c42f31`  
		Last Modified: Wed, 16 Sep 2026 04:32:15 GMT  
		Size: 55.2 MB (55164415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:491ba2907c2a70330ddc443320bf78b24f46ba878c6eca64c780529ed6af82b0`  
		Last Modified: Wed, 16 Sep 2026 04:32:16 GMT  
		Size: 78.2 MB (78173500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb5ee6ddb6815e6f95ffbc316227563571c1a8ab1520cfd07dfb1c733d234297`  
		Last Modified: Wed, 16 Sep 2026 04:32:13 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:25f373986ea68abd25e4b44bcd946e0936cf196216e4c29d6d4b4dd58dffb47c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7515305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83f38d8f5a4d962af1f6390a2bcd5579105301e4c931492ff0fc6d53e02bf1f0`

```dockerfile
```

-	Layers:
	-	`sha256:de4d657d1e897360b094ecfa14304937ed8dab5395ed290d75ee979fe097d6bb`  
		Last Modified: Wed, 16 Sep 2026 04:32:13 GMT  
		Size: 7.5 MB (7500958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d2476124c50591f5443a946d1f2e6367e1ce6db685d3973162c72a2b49fd589`  
		Last Modified: Wed, 16 Sep 2026 04:32:13 GMT  
		Size: 14.3 KB (14347 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4752cd7f491ba6590882133538f656c0d5a042b5d4306eef1ee378df060d65a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.8 MB (180821594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e27a72607cef9dbe3268436b9fa91cc71854661cf0e75af5b871b787e224553`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:32:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:32:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:32:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:32:03 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:32:03 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:32:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:32:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:32:18 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e041fcd6076c4f687f4faeb0a0e778e11a58b50f31279b758f88e80a122ce447`  
		Last Modified: Wed, 16 Sep 2026 04:32:37 GMT  
		Size: 54.3 MB (54262748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7a89bb63b73e3db6e3c67db105c6498056007681a806077ce526e442c845560`  
		Last Modified: Wed, 16 Sep 2026 04:32:38 GMT  
		Size: 78.2 MB (78174550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eaa8e47deb418e296ed0b6c78295e006d7724d30c787f8569f8092cdcbda218`  
		Last Modified: Wed, 16 Sep 2026 04:32:35 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:f8fb33e64f92ad83a1c0957f0f856012801568a8d9dcafbcfa8556ffddc75d4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7521887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eafe772b5ceffc67deb3f994159cfcaed30d59ebe8ce098f97a22ab61e9f4af`

```dockerfile
```

-	Layers:
	-	`sha256:8ec22a3825f9f7564794f07291575c4bbf702291742ed22770f39fb2294a7a93`  
		Last Modified: Wed, 16 Sep 2026 04:32:35 GMT  
		Size: 7.5 MB (7507421 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ecb06d12922b06385b551e0efc37b663891891ecea3c2eb1a41165e2387f4dc9`  
		Last Modified: Wed, 16 Sep 2026 04:32:35 GMT  
		Size: 14.5 KB (14466 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:8036e7bf962249e3fded2f91200cac9d9f53a1b199fe89bb0454443159957274
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (188997475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6689ddf577a535b225085c83d874463ac2719fc5c9398ebd6138fcde4bec1142`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Thu, 03 Sep 2026 23:58:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 03 Sep 2026 23:58:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 03 Sep 2026 23:58:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 03 Sep 2026 23:58:51 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 03 Sep 2026 23:58:52 GMT
WORKDIR /tmp
# Thu, 03 Sep 2026 23:59:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 03 Sep 2026 23:59:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 03 Sep 2026 23:59:49 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca0c2d5205fc55d3b835077ee231788be3c19f5d98cf670eb9556f1b27555247`  
		Last Modified: Fri, 04 Sep 2026 00:00:47 GMT  
		Size: 52.7 MB (52670663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3dba96c78115f9fb8cc0107a6eb8d1f6572825b20a116215e1848c99aa6dd6`  
		Last Modified: Fri, 04 Sep 2026 00:00:48 GMT  
		Size: 84.0 MB (83984402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb785d30ae761043b678af5c143058522101f5c3a8e258a5fb896d867fb58576`  
		Last Modified: Fri, 04 Sep 2026 00:00:45 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:ff1053576a6066bda34027070f95dda5b238f61f31acc722c7422f2ab840f8cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7521940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd77db1cd0efff87cdf6343d0ecfea95ce8a5f029ead9fbf43bf44a8a909fe1a`

```dockerfile
```

-	Layers:
	-	`sha256:6339ac1829e922f755d5099fc3d9b599985793580011022a8b8da20ee4c3d1fb`  
		Last Modified: Wed, 16 Sep 2026 10:18:14 GMT  
		Size: 7.5 MB (7507544 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bdb780e2a8dfe17afbf83d204e83438d554a81acf66710c3f0cc4a62dc4a7d38`  
		Last Modified: Wed, 16 Sep 2026 10:18:14 GMT  
		Size: 14.4 KB (14396 bytes)  
		MIME: application/vnd.in-toto+json
