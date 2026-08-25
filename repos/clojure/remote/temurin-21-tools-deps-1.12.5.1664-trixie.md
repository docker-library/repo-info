## `clojure:temurin-21-tools-deps-1.12.5.1664-trixie`

```console
$ docker pull clojure@sha256:f605f71ea525da36c20b5392581b20244aa17a11d883ebdbb624ad8fc5748339
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:b80bd324eb191b890f16a4b8fca162a615e916206e44712f942cd74a86233bb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.0 MB (289997967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0818babe8c7a1085314eb92cf7c1d4f28c4c12d9a86c272e0c8af5eac4862564`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:30:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:30:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:30:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:30:30 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:30:30 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:30:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:30:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:30:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:30:46 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:30:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be311ed1ac31b90b01f0cea7c4669062816a0e38b15ba4e64277a1a99db2d5de`  
		Last Modified: Tue, 25 Aug 2026 01:31:10 GMT  
		Size: 158.1 MB (158120295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcb90197d82433d0128214edb1503c67cc7f46630adcb453f178702f43e65c6a`  
		Last Modified: Tue, 25 Aug 2026 01:31:09 GMT  
		Size: 82.5 MB (82538801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90f89dad69e941e5ee1749787ab861bae0406ade7a5443fb89451b70320aa9f2`  
		Last Modified: Tue, 25 Aug 2026 01:31:06 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b685a193857109797cbb3e477bb6681120a592f20a0172de6eba5cf46235def3`  
		Last Modified: Tue, 25 Aug 2026 01:31:05 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:b9e70030fbfd2ce00f93e742af454be6fa8c0ce2ad707da6336c48f2610c7b4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7491629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b75c4e6e5850361b10d1a6ef55b08fc3bdd62bd6770bd5b9adf7d5598f5d35f8`

```dockerfile
```

-	Layers:
	-	`sha256:e985b77e4fca184bb7adc32a976aba6367f72636c4e0660440825396b626c928`  
		Last Modified: Tue, 25 Aug 2026 01:31:06 GMT  
		Size: 7.5 MB (7475721 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e516f586424ff05c7149e615690c65b883eb2e10cb1d06b0c6e2590b3f02668f`  
		Last Modified: Tue, 25 Aug 2026 01:31:05 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a4731c0fd54b5ee487f7c358c8700e521cc41da8459311bad04c8ae578c3f5fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.5 MB (288467028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bd6ae3e2536955c39f15c9dd620ece735b8c9a7074c5a4985a97baa3b6704e0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:34:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:34:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:34:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:34:58 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:34:58 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:35:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:35:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:35:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:35:15 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:35:15 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb3683a1584a427373151ed3d155a4222f3f1b30bcbe9d3e2d7823fda93fcfea`  
		Last Modified: Tue, 25 Aug 2026 01:35:40 GMT  
		Size: 156.4 MB (156401921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ff6634f7964d112d7592d2c851dc9dc76ad7cab015e2df2a782ee3eda86a66a`  
		Last Modified: Tue, 25 Aug 2026 01:35:38 GMT  
		Size: 82.4 MB (82359209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab9cf790e2a46b94bdaf37a72da10d5c825fe6595a4a837e2b4bab6a6d5496dc`  
		Last Modified: Tue, 25 Aug 2026 01:35:35 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9064d8eb27f05f27a291401b4c8ccfa7b8cdd8063b9ce65d53d86183ddb2457`  
		Last Modified: Tue, 25 Aug 2026 01:35:35 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:d402d38173fdf0068983ddde3b4a890a687c97143376cc442f6c28cb0f5c1349
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7498140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69c9b5d905c6d5541b6435b50215384b5fe4e95e59eac4ed68d3bb169e89337f`

```dockerfile
```

-	Layers:
	-	`sha256:466bdeb66bb34aaac7344d9348ae564d619d80326440fdddd627652d5fddc91f`  
		Last Modified: Tue, 25 Aug 2026 01:35:36 GMT  
		Size: 7.5 MB (7482114 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e8963284cf1a78defe851cc4ab3a9ac03bdf8224b1a6b3f97494a4cf309337d`  
		Last Modified: Tue, 25 Aug 2026 01:35:35 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:43046d3085ab0abe5eb0bc8106595ce098975299213697e3d370396f8a519755
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.4 MB (299390613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6869c6e345134ebbbe9e699acf04f85ec5ec29a0365fd7a93782f28ed69bd5a9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 08:34:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 08:34:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 08:34:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 08:34:09 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 08:34:10 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 08:41:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 08:41:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 08:41:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 08:41:36 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 08:41:36 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89e920596c43bd41e327f2c6a1f0843ec0a40160e12dedb97d7849e1cfd24062`  
		Last Modified: Tue, 25 Aug 2026 08:38:29 GMT  
		Size: 158.3 MB (158274933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47d98f8e040d42befbfb29eee7fd877438311645d045c97e47efbee0c7b5503d`  
		Last Modified: Tue, 25 Aug 2026 08:42:20 GMT  
		Size: 88.0 MB (87950353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4cfe56e1e7a1a4d9849f10335ace55d4ce9a66f1f2d3a47bb623f0c0049a308`  
		Last Modified: Tue, 25 Aug 2026 08:42:18 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3590a827774f83d68655ac50a592daae01a81b60353369a3dcb38517de9d26e2`  
		Last Modified: Tue, 25 Aug 2026 08:42:18 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:b1a9079ee46ea580218ccbd1ebf2f2e6305ea3d46397da2341f8f51f7cc14a83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7496098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebedcf2a222a0ee7b8e2de7b2158b3204631fa64376d217e860969624e5b12ed`

```dockerfile
```

-	Layers:
	-	`sha256:68d7b3fe5fd13c84a1f1a84f053dbe848d454ae5e9667414c5eaf4af9d784a75`  
		Last Modified: Tue, 25 Aug 2026 08:42:18 GMT  
		Size: 7.5 MB (7480142 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa9e4fa3599cc76efdbcfe84c2d36f0451ec6caef62480c1daa30d83b75eeb2c`  
		Last Modified: Tue, 25 Aug 2026 08:42:17 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:ab6f8723b84383ad4626179a4a96fc03b2c982e541e8973076e139e1fd6833dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.3 MB (280275080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35cbe9135c9a950d572a2c714f92370eb1ea7836f403a8bd2bbc8759e3661ecf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:08:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 02:08:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 02:08:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:08:29 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 02:08:29 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 02:08:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 02:08:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 02:08:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 02:08:46 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 02:08:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4415ebc808ead343ed2ff09e9ddd7fb38001c3cd021262fe1ae58bf5fa958333`  
		Last Modified: Mon, 24 Aug 2026 23:20:18 GMT  
		Size: 49.4 MB (49406697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc0352e38fdfd4a6ce2ff46afc8f1a6cd088606d22404d518b52590eaba2f66`  
		Last Modified: Tue, 25 Aug 2026 02:09:16 GMT  
		Size: 147.3 MB (147347791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:041aeea8eaef176de0745ed9a8594926912b2df04112bfd6b19fc79d70e0fabc`  
		Last Modified: Tue, 25 Aug 2026 02:09:17 GMT  
		Size: 83.5 MB (83519550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5dc7193bca91d059f6ce020abbffc537a5a518d246296c908a7cf7a1940a292`  
		Last Modified: Tue, 25 Aug 2026 02:09:14 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1ca41fcbf1d528cc729f1d7013ae6dc033662f13bd1b41000edb347c5fd0a95`  
		Last Modified: Tue, 25 Aug 2026 02:09:14 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:04c44a9891bf2892198e20a01a706ad98e2a9ded4cda41be2551b33802950700
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7487550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99207643df2a9581d935a3fbd8a269e3765c70a2a1badb13778aca406dbe1133`

```dockerfile
```

-	Layers:
	-	`sha256:cf33eeb90e09dc2e2f7deeb9ae2f7c2f8fd2a841b12715da03e107398f47edaa`  
		Last Modified: Tue, 25 Aug 2026 02:09:15 GMT  
		Size: 7.5 MB (7471643 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6aa97d3998dce020054398b57660e4bb742f1a1650cdd2f13e0622f54606925`  
		Last Modified: Tue, 25 Aug 2026 02:09:14 GMT  
		Size: 15.9 KB (15907 bytes)  
		MIME: application/vnd.in-toto+json
