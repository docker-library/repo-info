## `clojure:temurin-25-lein-2.13.0-bullseye`

```console
$ docker pull clojure@sha256:fee09af9f576dc95c1ca04c5c2906f41989d8b5b041c49f97a2553d525de7c91
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-25-lein-2.13.0-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:9efe96bd359ca1dc70e1306995797cf8612ab7eb58aba0e53bcc9322ccea2bac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167847910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aebcc71508a0c8c45ad5c2a3a3afa1b30f0d9e316f394e956d28ae26130abb9a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:19:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:19:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:19:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:19:19 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:19:19 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:19:19 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:20:30 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:20:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:20:30 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:20:32 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:20:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:20:32 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:20:32 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:304b4b18c1d0fe80c9203b8770b6e548b985b7e47d3c5fed03422f646795dfaa`  
		Last Modified: Fri, 21 Aug 2026 19:20:52 GMT  
		Size: 92.6 MB (92615082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7298f1497638c702196e5531514a4884b58987504ab045b7ae22486bacccfe30`  
		Last Modified: Fri, 21 Aug 2026 19:20:50 GMT  
		Size: 16.9 MB (16940201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63db8a928ec93e2aad63f5416c4ca262859bf983cd658e9e59310a5ef00bc513`  
		Last Modified: Fri, 21 Aug 2026 19:20:50 GMT  
		Size: 4.5 MB (4515180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3647f75f729e5b8e881eb4d76f7e3ad9bca07ce7ec8c3ee7331204824494365b`  
		Last Modified: Fri, 21 Aug 2026 19:20:49 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:c91d1353c873ead21d4d17cfe391253edffadd42b265fbf50d8c17a88e509c5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4492638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebbf11c5cac8696f1887aa0e17f951c4cbb380161805b9d9579e55209059da1f`

```dockerfile
```

-	Layers:
	-	`sha256:c8cfb0853a819fd12d488431378b8ff792d50a70dc5fe7746fae369b24bca383`  
		Last Modified: Fri, 21 Aug 2026 19:20:50 GMT  
		Size: 4.5 MB (4474266 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f28d6a66c635933669760baa68e002b5fecda86c1e5b71f81154c6d8561e85cf`  
		Last Modified: Fri, 21 Aug 2026 19:20:49 GMT  
		Size: 18.4 KB (18372 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:bd5f48823d6dbbe499d97ff333c851598f5145feaef8d3f0d5a12c679f9aa00e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165239275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eed2c185b4fc70d2140d223227a116a7a88392abb828e581e6a2d536a01cd05`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:08:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:08:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:08:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:08:03 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:08:03 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:08:03 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:09:16 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:09:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:09:16 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:09:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:09:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:09:18 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:09:18 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac2c87ed5f797b2c411eb671b4622ce4de3582bd88f662d275b33feadfa6561c`  
		Last Modified: Fri, 21 Aug 2026 19:09:37 GMT  
		Size: 91.5 MB (91532194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:add1d1f7a535c2289d8fdcd5555a46396fe1729ce05cede31341294d1faf7421`  
		Last Modified: Fri, 21 Aug 2026 19:09:36 GMT  
		Size: 16.9 MB (16930572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc3517d371e3c8676b39258b75feb9077f04df9098ad4282b02a5291385d7b0`  
		Last Modified: Fri, 21 Aug 2026 19:09:35 GMT  
		Size: 4.5 MB (4515178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:214dc0fd7850e7d7b45e61f9a39782cd604a262b2ae5eb6545094877fd106e10`  
		Last Modified: Fri, 21 Aug 2026 19:09:35 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:ed4f928826e3768f1c0b4e168d35782231d4d5a7a0e296d1a1a10191332f510a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4491778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f19b0363653f5856ea4d21bf7069b8b237fdb8396682616f47256c3980697bc`

```dockerfile
```

-	Layers:
	-	`sha256:1eebbcad00f1a78229a4bba6de23013fb752a04c7ed621baae5c9f803a5bcc50`  
		Last Modified: Fri, 21 Aug 2026 19:09:35 GMT  
		Size: 4.5 MB (4473261 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74ba75a0e505b408c60428ca5b7ce0e7b59b5f9957b26286e957b20cbdcae51c`  
		Last Modified: Fri, 21 Aug 2026 19:09:35 GMT  
		Size: 18.5 KB (18517 bytes)  
		MIME: application/vnd.in-toto+json
