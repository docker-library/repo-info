## `clojure:temurin-11-trixie`

```console
$ docker pull clojure@sha256:e3cc984d9a7584e150e8ed4de9ede720a8bcc7cb9b1d055f75a41e31e203ed12
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:00fc7515f7a571cb2cd2145b7c4c0b068eeadab87adfd31c8954d5bff4447c6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277842439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d5c3593fa53674d67270dd3cec931132437835dc1e82ed2ade49925f33b50c2`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:11:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:11:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:11:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:11:06 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:11:06 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:11:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:11:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:11:23 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5246c655059ae1a594450f0ec2d3d4bbd8a90b6678d3cdb817abfaf6f8602cff`  
		Last Modified: Wed, 28 Oct 2026 02:11:46 GMT  
		Size: 145.9 MB (145864287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e75869a6ece0493047c819d261cfdf658da742b47ee2b7257753c885113425c`  
		Last Modified: Wed, 28 Oct 2026 02:11:45 GMT  
		Size: 82.6 MB (82569611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1366578818485e65f3ab54dca8507eb6baa39030be792106519619db88cfaf7`  
		Last Modified: Wed, 28 Oct 2026 02:11:42 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:d1b3606f05941f4918b4d00695759dd296c408969b220920a8efeb3241093cc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7510622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:004d4a43625489917b28d14ceff152ad5b545a4ce120fcc6abc699afe9ea6065`

```dockerfile
```

-	Layers:
	-	`sha256:42d3896035c3940a83ea9f35b40324f0167dc36dd32fc5bf4c0a5f5de5da00f2`  
		Last Modified: Wed, 28 Oct 2026 02:11:42 GMT  
		Size: 7.5 MB (7496283 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d0f7da5211c80c33de5514ef2808140245d904fd6321a4a16b6422b5304df65`  
		Last Modified: Wed, 28 Oct 2026 02:11:41 GMT  
		Size: 14.3 KB (14339 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ab34394d9e849d428fc3d05e779bb657bd73e5b88c147ed42b29d568cc268244
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.7 MB (274746069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c52b68ed7f8fe2382e9b4fae624fc7127c27d2ce5e868bb78f8af542face05bf`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:17:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:17:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:17:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:17:26 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:17:26 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:17:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:17:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:17:43 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeaba5b3f704a5d6feb106cad520e3870d360451c89ac2cf83820c43a99ca07c`  
		Last Modified: Wed, 28 Oct 2026 02:18:07 GMT  
		Size: 142.6 MB (142576596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d63dab78b6350a1675ded530ee99755a9126d8ad3cb3009ffc309f729ec3b31`  
		Last Modified: Wed, 28 Oct 2026 02:18:05 GMT  
		Size: 82.4 MB (82392650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6f9f46b1a7b8d23b3f38662e2df308d34c9e28511c27a6b07d4c1ebcdf36493`  
		Last Modified: Wed, 28 Oct 2026 02:18:02 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:07cbb42fca618caada168be0b70507cd5f7dfcfce273217e26f43410dde240ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7517751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b828e9eb186c777197369164ee3ae4e7ab5d90a0c7bb60d587cfe002793cd07e`

```dockerfile
```

-	Layers:
	-	`sha256:2275ead4edb2396c09bc02594c7f2804a1b32b90b64fa97c10da6aec45113d97`  
		Last Modified: Wed, 28 Oct 2026 02:18:02 GMT  
		Size: 7.5 MB (7503294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fbdc39f40b479e8ae8ab9c01924ac7984be706d989d42f73a7d20e395d56cc5`  
		Last Modified: Wed, 28 Oct 2026 02:18:02 GMT  
		Size: 14.5 KB (14457 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:51c18bd52b200ec608af5f8909216261afee55d7becbd2fdb4a8b0f4f37921ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.3 MB (274300635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7aae0f0fe66357389c83c217ec36daca051117ad746b344536b3b123e71dd80`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 10:04:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:04:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:04:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:04:16 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 10:04:16 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:14:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 10:14:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 10:14:35 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7e28d103a30c4298a73f4f08206c12912fd590fd7ccd17f15fb979ae48224ee4`  
		Last Modified: Tue, 20 Oct 2026 23:35:13 GMT  
		Size: 53.2 MB (53207578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dcac8f1fb37221206ec9e42f91e7f9060981927dfbb2129eed28dc10e1790b7`  
		Last Modified: Wed, 21 Oct 2026 10:10:39 GMT  
		Size: 133.1 MB (133095132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e719a9b13e22af550ed1bcbab91175a6536b0f3f75f314426d583498c1f259bc`  
		Last Modified: Wed, 21 Oct 2026 10:15:40 GMT  
		Size: 88.0 MB (87997278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f01715379ede23abdbd125d0aac02e396283dd402d6d5a74bd7023009495aee8`  
		Last Modified: Wed, 21 Oct 2026 10:15:37 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:fae614c4630fc77c66ad3055da2009781914ec6886f14fb08cc0338625aab937
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7515249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c909b27ee660ede1e3de712441f87661a04ca494a005dd0d0a49bd1f3aaf49d6`

```dockerfile
```

-	Layers:
	-	`sha256:47e15809c8b2d4b7c5548bf4fc9c0326eb91d630c2004817713c1c7c8eab70b4`  
		Last Modified: Wed, 21 Oct 2026 10:15:38 GMT  
		Size: 7.5 MB (7500863 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ec8a04022372e2b3ba4a693d03fa827329b735773276d733a86aada92f355c5`  
		Last Modified: Wed, 21 Oct 2026 10:15:37 GMT  
		Size: 14.4 KB (14386 bytes)  
		MIME: application/vnd.in-toto+json
