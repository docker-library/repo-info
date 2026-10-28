## `clojure:temurin-17-trixie`

```console
$ docker pull clojure@sha256:6d64f1a0ed88c77f8a1bd862e821d0b2f1238c309914bf314379966094fff657
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-trixie` - linux; amd64

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

### `clojure:temurin-17-trixie` - unknown; unknown

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

### `clojure:temurin-17-trixie` - linux; arm64 variant v8

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

### `clojure:temurin-17-trixie` - unknown; unknown

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

### `clojure:temurin-17-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:621e205ae104b6694c1c24dc5923644de11e8377835e68b7a006cf73474aa088
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.9 MB (286891699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cb2ec10ca486acc26fc62b417740cab4f0bb52d6d92a67af5149cab44803d5f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 09:52:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:52:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:52:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:52:48 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 09:52:48 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 10:00:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 10:00:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 10:00:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 10:00:37 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 10:00:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:afc58b8a231a1e6a214ec81e1a281467fb0d1d7d88266448b5a56d1ec376a47f`  
		Last Modified: Wed, 28 Oct 2026 00:24:13 GMT  
		Size: 53.2 MB (53222242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c461ddfce047cec2e20efce189788752f1e6b0914ac19ad873878cdd22ae5b94`  
		Last Modified: Wed, 28 Oct 2026 09:57:24 GMT  
		Size: 145.7 MB (145671612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1715677e145e7a15d313b5e11f330ce5c9b8e1dc22d566d1629d5e100092d023`  
		Last Modified: Wed, 28 Oct 2026 10:01:24 GMT  
		Size: 88.0 MB (87996801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3a1d5b7188bb337bbee169521604cf121e03d89fcf6c80b96603bde86636ab0`  
		Last Modified: Wed, 28 Oct 2026 10:01:21 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18854987631aa5e8d12e367caab031cd98c2e047da256a4b0533558e529dee6d`  
		Last Modified: Wed, 28 Oct 2026 10:01:21 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:cdc50879cc429a1f0ab109379ef7ed15f96b658e42852b5be1257f3bc7b836b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7497140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dbdb652a8fc13cbc9f105b3b1aa3d65ec2a917b75ff5b8aa0be2c2f567456ed`

```dockerfile
```

-	Layers:
	-	`sha256:f10621213ae09805ab74d90a15e8e658c3e0dabcc16d36f0cbb9ad0da9848cf2`  
		Last Modified: Wed, 28 Oct 2026 10:01:21 GMT  
		Size: 7.5 MB (7481184 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b579e165355c4dcf73a53698db602f5d885ec84df55c86c4f864184867d22785`  
		Last Modified: Wed, 28 Oct 2026 10:01:21 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json
