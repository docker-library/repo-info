## `clojure:temurin-17-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:57aa5270c9d07fda95193c736894559501d956793e82ed1c826c13110a24a177
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:b0155841b81b578c50fc8e262a7951e8c35d402aa8ebbafa835600571da61c4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272495401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f3296f4c7dcd6ccf693e269b439143ae6db1d200378ce58b5509bf7f93f3029`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 03:47:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:47:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:47:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:47:09 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 03:47:09 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:47:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 03:47:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 03:47:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 03:47:23 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 03:47:23 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e0e8b00ceff92f18169a2e0fa04605803ab78eb5022de4d9182afdbf2d9cdb0`  
		Last Modified: Wed, 09 Sep 2026 03:47:47 GMT  
		Size: 145.8 MB (145822704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffc52127a0ed66e08c321ca0d57090f552d9f43fe1da6e9f13eca1b8bab927e1`  
		Last Modified: Wed, 09 Sep 2026 03:47:46 GMT  
		Size: 78.2 MB (78174293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36962463044e443cdbe093054569d5c8c0f4e6963260d326c80c4c253b6c1072`  
		Last Modified: Wed, 09 Sep 2026 03:47:43 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0e66af77beb4721f6008fce3783ca0074b445ad9be152685cfd642b3c2eb25f`  
		Last Modified: Wed, 09 Sep 2026 03:47:43 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:72ff765c8ddf99f52d254e4eafe91187d0c2c4f8c7d653de87ca9e4b0528fa45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7396528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab00aa1350974d906b09b24066178873c885e19af37b8f71bc4074df6399054d`

```dockerfile
```

-	Layers:
	-	`sha256:7a8ad48b53fb2ce135f074ccd1ad870055bbdea1b0f3adff9726f489eb09135f`  
		Last Modified: Wed, 09 Sep 2026 03:47:44 GMT  
		Size: 7.4 MB (7380596 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5038a97aa7921d44b7f2e287a3003fb890eef59a932a6b3b2a6ed83b55b529a`  
		Last Modified: Wed, 09 Sep 2026 03:47:43 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6253d4ac1decb2db8aa2dde5acd38ec594247332d753def95b235ead3e55b607
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.2 MB (271206871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8c3938771d443ca21f12d65bc35044c0137d32517c879d4b7e5e48e908d5600`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 03:58:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:58:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:58:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:58:16 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 03:58:16 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:58:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 03:58:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 03:58:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 03:58:31 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 03:58:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9234cb728eec2390f35db4354241374cae778af5731c6f93b67262ffb458375b`  
		Last Modified: Wed, 09 Sep 2026 03:58:55 GMT  
		Size: 144.6 MB (144647498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1814ba1d669047ebcd36e9f117ba733c82c4560ee1615dca61de1d5e3d5e6d8`  
		Last Modified: Wed, 09 Sep 2026 03:58:54 GMT  
		Size: 78.2 MB (78174684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d60f2e9760e9caa3c22066b2b7aa51381153f682db42aafbbcc8bc861c8a939`  
		Last Modified: Wed, 09 Sep 2026 03:58:51 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f93dd4e122140cc17e68e3b019751b57451577d7d096ebd3281fc2783ebfe0b5`  
		Last Modified: Wed, 09 Sep 2026 03:58:50 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:e44c577afc1bdad53ceca58a3494bc14b0c255675922a5cdb698dff6014de3ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7402409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f337590dc8425a2c891371bdeb55f32341ca56b26e31376defa294b1b46c6d4`

```dockerfile
```

-	Layers:
	-	`sha256:b4db85fe4131a8ca88ff55527704fabf22c6f2632384dd3d6a11bad7d404020a`  
		Last Modified: Wed, 09 Sep 2026 03:58:51 GMT  
		Size: 7.4 MB (7386359 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ecf64520a0ba64d9db890f94c6af35e3d90a1a70b14138a89b16621a9b3775d`  
		Last Modified: Wed, 09 Sep 2026 03:58:50 GMT  
		Size: 16.1 KB (16050 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:37ea2dadeeeebf10907ac16371cb6b65ca285038d25ff7ba2b844574a0f68a5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.0 MB (282007669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5420a14c7530f2e8102c4b196779f93b267d93376aae2d0a931032e54d1235db`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 10:45:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 10:45:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 10:45:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 10:45:08 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 10:45:08 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 10:58:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 10:58:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 10:58:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 10:58:23 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 10:58:23 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c35e23d86d3bca50f128b4e0f925668b13ace02ade6591a1b9c229a9cf1fca0`  
		Last Modified: Wed, 09 Sep 2026 10:50:41 GMT  
		Size: 145.7 MB (145674356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34b549ef0ed55fb7a3e9862f99ee0e1ed5042b5f14bb3f191bb2be0834fc8683`  
		Last Modified: Wed, 09 Sep 2026 10:59:01 GMT  
		Size: 84.0 MB (83990505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae08a895c07396845599909cc365380c457e5a454d1b91f0870c28289a4c9b36`  
		Last Modified: Wed, 09 Sep 2026 10:58:58 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1597d9a3ecd1703b2a6650ae2497d002642a4c0164c6c06dc480bb773fde7b66`  
		Last Modified: Wed, 09 Sep 2026 10:58:58 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:d39bcec203f6f77d89593671f665b169a6f0254640993a3e04129cf66773f155
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7401790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba331ddd3e60672bee6e6bfc2ed06290e0f1a742f17826bd06bff3922dd4d486`

```dockerfile
```

-	Layers:
	-	`sha256:102ea96b0a29d830dfbe002e143c4799330308651720120519ca475b3f08d6a7`  
		Last Modified: Wed, 09 Sep 2026 10:58:58 GMT  
		Size: 7.4 MB (7385810 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f3bcdd9d13660597343c94a1aac67ee9f4c8319146507a99854a088a7cb357a`  
		Last Modified: Wed, 09 Sep 2026 10:58:58 GMT  
		Size: 16.0 KB (15980 bytes)  
		MIME: application/vnd.in-toto+json
