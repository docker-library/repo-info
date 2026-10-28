## `clojure:temurin-25-tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:a988df6cb56fb6e2c4d0da72546dfdc8144e50dc5363adf91bd3495f8c391a18
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:1a6ab463413b23aaea19babae0e49712706ded8ec529eccd5aeec07ac476545e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.6 MB (224582173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baf79f664499964b85cf142c8df39cd9430b74ae2d062af43b0998884dd9a704`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:51:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:51:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:51:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:51:51 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:51:51 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:52:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:52:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:52:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:52:07 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:52:07 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78190a958711890d1d0dbecb32c0a267be7b29d9dd77c5fbfdb097b9df215f93`  
		Last Modified: Tue, 27 Oct 2026 00:52:29 GMT  
		Size: 92.6 MB (92618041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a413ed97b99b761fd8346520dd009a1903f1c0d6f9f00a47e8d80a07beff6bc0`  
		Last Modified: Tue, 27 Oct 2026 00:52:28 GMT  
		Size: 82.6 MB (82569468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1080e62f7486949a7ca693b585852a05703b9a90e89279f5a6b4a5c9930efb21`  
		Last Modified: Tue, 27 Oct 2026 00:52:25 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db68ce5adf17ee087d8cf780604dad6f74791604a16654e8e6f85bf752bf5e5e`  
		Last Modified: Tue, 27 Oct 2026 00:52:25 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:c2b3ebc06711d76e77f61ec09322a4f3ff80647cd56feed104c7b3361e3e61af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7461400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb48a84576894d1c0b2ff96c65f70a6086df6a7bd6699fc042efca59f19ad438`

```dockerfile
```

-	Layers:
	-	`sha256:a34478a0d309f05822bcae8f376c70e430e74fbb0f3929a7bf70ebe758a435d8`  
		Last Modified: Tue, 27 Oct 2026 00:52:25 GMT  
		Size: 7.4 MB (7444831 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f4026dc95e8caec8e57465bc613f5ce9a974263c558c044cdbdd6e79aac8a89`  
		Last Modified: Tue, 27 Oct 2026 00:52:25 GMT  
		Size: 16.6 KB (16569 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e4f6ddf42e152db80da7e5185bd931b61a3d280cd0bfde6019bd08aa9b63269e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.7 MB (223698872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dea2dd6c5a795f08cc987efd8fc448ebd08424bff01100368d1b71fc442f3c4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:21:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:21:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:21:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:21:53 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:21:53 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:22:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:22:11 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:22:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:22:11 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:22:11 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4063e86b240c7236d736aeefe4157d360e764059dda38c2a5c823f68d7d214c1`  
		Last Modified: Wed, 28 Oct 2026 02:22:34 GMT  
		Size: 91.5 MB (91528800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d043ba0f6c34dfa4c1c6472a644e4524b890c4c054ead7eea69eaaabc8a56805`  
		Last Modified: Wed, 28 Oct 2026 02:22:33 GMT  
		Size: 82.4 MB (82392848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f76f6eeae8151b174521e840f9281a777f6cfcd6e5920d0c7623e5c6d627bfd3`  
		Last Modified: Wed, 28 Oct 2026 02:22:30 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9813e5d4ddb8754ffb0c064a8822d0b5876f94b7e2945322fe8503a6997632b1`  
		Last Modified: Wed, 28 Oct 2026 02:22:30 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:79bbd4d0fdc5b9dab5301817be89b22c6d3540c859a0b0485df517a673a04b7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7467956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55015ce350f0f16cdc4fa7a6f16aaf99c281704418a22923b56aa6cc85aaa845`

```dockerfile
```

-	Layers:
	-	`sha256:c01973943017de462a0ab8d1c6f12a529d007920774141caa891ab0dba6ce4f5`  
		Last Modified: Wed, 28 Oct 2026 02:22:30 GMT  
		Size: 7.5 MB (7451245 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f53a33887382639b2a121ae92385b0b41ee9b62643d8e01cecfed661b46c03a`  
		Last Modified: Wed, 28 Oct 2026 02:22:30 GMT  
		Size: 16.7 KB (16711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:931da6d40b7d0e4be94e2e2e6c3776cfaf1ae418fee3d6b6cf0be1a83aba4e23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.5 MB (232462174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97aa9262eebc3dee4f19aa9d3c5e15b4a26c9f81878429b3c7cb0edb070bdf6d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 10:50:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:50:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:50:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:50:25 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 10:50:26 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:00:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 11:00:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 11:00:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 11:00:21 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 11:00:21 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7e28d103a30c4298a73f4f08206c12912fd590fd7ccd17f15fb979ae48224ee4`  
		Last Modified: Tue, 20 Oct 2026 23:35:13 GMT  
		Size: 53.2 MB (53207578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:048e1f0e41557690eae11af5f83bc54103283e7cb6f701fe4a358768b52b4bda`  
		Last Modified: Wed, 21 Oct 2026 10:54:40 GMT  
		Size: 91.3 MB (91256233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81acf38de524823f4f1a2e811aa33f40879a0e9fbfd927cefe22896ca83418dc`  
		Last Modified: Wed, 21 Oct 2026 11:01:00 GMT  
		Size: 88.0 MB (87997319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeeb854ee15f7f20c2a01c3aa03e93626a8066092c16281c9ee58131d293edc0`  
		Last Modified: Wed, 21 Oct 2026 11:00:58 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:697ba6dd5aa59afe6defb4461b01fb74bba1ede457a08bc1dd0ea1a0bb12f5c0`  
		Last Modified: Wed, 21 Oct 2026 11:00:58 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ebfb1086a011cbe5799161c637c232126b097cdd9296113cae9b510d4418b322
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7449979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba721f9824d9c8e21b1e755690c3cefb883727682da79424bf61d83ef71981ec`

```dockerfile
```

-	Layers:
	-	`sha256:f785e704dec3013763677a00579b948d20f97b3504da217114d452dfce93a950`  
		Last Modified: Wed, 21 Oct 2026 11:00:58 GMT  
		Size: 7.4 MB (7433350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79030b9efd73f35b1c8d1fd6b23ca0cefc733b5eab82261306e8f2ffd849ba9a`  
		Last Modified: Wed, 21 Oct 2026 11:00:58 GMT  
		Size: 16.6 KB (16629 bytes)  
		MIME: application/vnd.in-toto+json
