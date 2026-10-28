## `clojure:temurin-17-tools-deps-trixie`

```console
$ docker pull clojure@sha256:b3eb2861a6f1a821bc1aa30a1ba83bb7daa510f72e6f50479bc9bfa5ad085ffe
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:9b5621b73e91937acb628ef0651766713ad97b2504454d64070306584db4eff9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277803955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aeb6e624dfceb3a54280d87654fefcf771d94de1ff07408d58aff9204732914`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:11:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:11:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:11:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:11:59 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:11:59 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:12:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:12:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:12:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:12:16 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:12:16 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a50de2c30be4a72f6f7d81cad2a2995349ffa122c3017fa5ae10cebb079d2fd`  
		Last Modified: Wed, 28 Oct 2026 02:12:38 GMT  
		Size: 145.8 MB (145825460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec6ff535f833d059f3fbf33ad481f3c657ae831d4e22cadeadbbd41f50455ceb`  
		Last Modified: Wed, 28 Oct 2026 02:12:36 GMT  
		Size: 82.6 MB (82569559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33a6f7974f16db8523be034059342fb92f5acc0d8c917c50e00fe380581ba106`  
		Last Modified: Wed, 28 Oct 2026 02:12:33 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1f483549398f91552efa426115b78124a44730949f9f86c8e8d723a26082ae5`  
		Last Modified: Wed, 28 Oct 2026 02:12:33 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:9824b8a3336fa6b1e255df6b0182aac73cb677cc05206ff7efc31a8537df9d38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7492675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0119538fabe85c647f43feeb0d12cb37ab5fed001da77df4f0cf2adc23705a0b`

```dockerfile
```

-	Layers:
	-	`sha256:4fff587e461e0d138faa6db9c7dba6011c6b2ba9be28a72e4f6c4f85171572a8`  
		Last Modified: Wed, 28 Oct 2026 02:12:33 GMT  
		Size: 7.5 MB (7476767 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45ce8053b9a0bde55e66025c8357b739b9c352d24505cfaa80ee0a24199dda8d`  
		Last Modified: Wed, 28 Oct 2026 02:12:33 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:cd3ba18eee87e72da2d0f1ead4febf751f16a3e9c027f281f65987ed251a260e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.8 MB (276817852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86743eb373aab14c86fd62edadef3757bcbe36082de904edbe7a11969300a15b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:19:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:19:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:19:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:19:07 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:19:07 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:19:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:19:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:19:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:19:25 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:19:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7687327df678c48c6cbc592eb7ab06edb41343ffbbc709e15a1b715003d1c341`  
		Last Modified: Wed, 28 Oct 2026 02:19:48 GMT  
		Size: 144.6 MB (144648277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:290eaaaa3f69dbc194190d2071bc12490ca26eb870aef59ef394ee20ca1409c7`  
		Last Modified: Wed, 28 Oct 2026 02:19:47 GMT  
		Size: 82.4 MB (82392353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:232a7796e263590fa761e012cfe3dc102148c6d892c7777acc5ec74791cf9b1d`  
		Last Modified: Wed, 28 Oct 2026 02:19:44 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b2f6cca718edb67e83d804f15a4c1afcf9ed7a27b48bcf399fc28f3c0782c7b`  
		Last Modified: Wed, 28 Oct 2026 02:19:44 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4aacba876f63f2f41e0f0357fc12124a0901148ea58dabc241ebae7b34400109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7499186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a478dea5236c7b401e074e7c1110463e8fcdcaa217c08cc1016e2fb6229c529`

```dockerfile
```

-	Layers:
	-	`sha256:64599c0b94ccef7f967fcc925674b50c92dd1939f826990dadc90abf24676f22`  
		Last Modified: Wed, 28 Oct 2026 02:19:44 GMT  
		Size: 7.5 MB (7483160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28a89e1e4942c1bc996598e12b081a163ebf128a507b240bff0025610139e460`  
		Last Modified: Wed, 28 Oct 2026 02:19:44 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:f937dbe982bcbcab0aaf4080585343861742e4fcc1a69a6f7aab17f093498f18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.9 MB (286877401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50f587576cd24107ee4943407022bcb50d214420065d546d3e9081a38457a412`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 10:22:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:22:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:22:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:22:54 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 10:22:55 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:31:40 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 10:31:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 10:31:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:31:41 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:31:41 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7e28d103a30c4298a73f4f08206c12912fd590fd7ccd17f15fb979ae48224ee4`  
		Last Modified: Tue, 20 Oct 2026 23:35:13 GMT  
		Size: 53.2 MB (53207578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b14205fbba26894adf902cfcd4da08f03dbf8cc5016c01e991ea6e329381c7af`  
		Last Modified: Wed, 21 Oct 2026 10:28:12 GMT  
		Size: 145.7 MB (145671534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d991bb03d5462de6b4f904f3edc8c81d52a86ba28e1ac127c47fa2ae7b51e326`  
		Last Modified: Wed, 21 Oct 2026 10:32:37 GMT  
		Size: 88.0 MB (87997246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d49ef48c93aaf9fe0f6f70f5f0fa11dfcf81f83185b624c179499837b8cd6988`  
		Last Modified: Wed, 21 Oct 2026 10:32:34 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ad80b6c30a7671335fef099cbadd9c01c49d924a4b7b2accf4eca2ca4ca58a6`  
		Last Modified: Wed, 21 Oct 2026 10:32:34 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4440521aaeb3ad5e0529edfbffbf5226d187b41f7f765042f0334c6223cf4dcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7497918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0946735d9bbdfba573a7d78665a97a4ddeaf79e0ac8dbaedeb6e248df029c5c6`

```dockerfile
```

-	Layers:
	-	`sha256:9ce6ce73a2a935e14336e01d9a4ce7f59a03c918a2d381a2cf9af5570180ec1f`  
		Last Modified: Wed, 21 Oct 2026 10:32:34 GMT  
		Size: 7.5 MB (7481962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:098219e7777c5cb5c15753be0083cb031ab7c478015d9ee3396788854eb262e1`  
		Last Modified: Wed, 21 Oct 2026 10:32:34 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json
