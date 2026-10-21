## `clojure:lein-trixie-slim`

```console
$ docker pull clojure@sha256:3732b2e30ab818fd26df689239b83280f41281a2ad0af0635d3f1356f7b99462
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:f3bed550193647c849665a81569d758de1d5b2b52171364053fd62039d79f8c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.7 MB (143718688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22475351ea3c83128f19681055c63b8b1b7b19c13623fd7affae3da6dba2c01b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:19:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:19:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:19:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:19:53 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:19:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:19:53 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:21:07 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:21:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:21:07 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:21:08 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:21:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:21:08 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:21:08 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1af16cb4b086d6d625f05bc0c2b503a1846b170c2cb6ddb3dd200ce41f0533af`  
		Last Modified: Wed, 21 Oct 2026 01:21:27 GMT  
		Size: 92.6 MB (92618032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56d87cd866a7a098896c298ec13458343997159893075eba81d7fd5ac25dc7c7`  
		Last Modified: Wed, 21 Oct 2026 01:21:25 GMT  
		Size: 16.7 MB (16741437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93854ca75b9d515cfa35b6a6c71d5c6c2c9a45b718acf612e0eaac0750cb8c9e`  
		Last Modified: Wed, 21 Oct 2026 01:21:25 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbdf58c206fc84fdda30bd1e4709510a99c525d1d9425ab0bec55b1a568a04d3`  
		Last Modified: Wed, 21 Oct 2026 01:21:25 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:08140009744312712b9a2f01ad8b33b3d5f966d231e67d3e9673c9aed1ae7852
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2358204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d4381f08bea6a5cd778daf4a819572896f248df73c4689ff3e90c1ede7d16e8`

```dockerfile
```

-	Layers:
	-	`sha256:d118211626b498d35d246ff556d9748bad77b798fcc41549ee243a0da3ccd2a0`  
		Last Modified: Wed, 21 Oct 2026 01:21:25 GMT  
		Size: 2.3 MB (2339804 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e40906d45ee22d63f051ad4b95539fbfda56b24abd9baae4cc48a67e6f48871`  
		Last Modified: Wed, 21 Oct 2026 01:21:24 GMT  
		Size: 18.4 KB (18400 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c695a1c13ad5e72f45098105cdf6a382a6b2699cbe459513f0cbc5cea6df9895
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (142953646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:939aeb27ee0e46d802de480d82726aad6cc9fd681e32a5861571900c764dce1f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:26:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:26:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:26:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:26:12 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:26:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:26:12 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:27:33 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:27:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:27:33 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:27:34 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:27:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:27:34 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:27:34 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44f5251184721e41ba068bca1e7e9c4b06d6f2542dcce03d03ff8ed53b89661c`  
		Last Modified: Wed, 21 Oct 2026 01:27:54 GMT  
		Size: 91.5 MB (91528874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a29eef484252175ae1d0413f322f2fe784494f999e40ee077ffd3ffc23dbb3`  
		Last Modified: Wed, 21 Oct 2026 01:27:52 GMT  
		Size: 16.7 MB (16708679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcc1e38fe720e4a8e1c6bf24e8f9f94729011880a9134152716ae33c6d44c7b4`  
		Last Modified: Wed, 21 Oct 2026 01:27:52 GMT  
		Size: 4.5 MB (4515185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e504c130f8e6d11144875ad37a921e88c224a42e396f1d02c5b166109fd8f632`  
		Last Modified: Wed, 21 Oct 2026 01:27:51 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:dec59ae035d9dcfff854173c3e9b6592a3cbdfbf8731328be863cf47a9f8b3fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2357979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08e97cba26bff91065096932c14ecdd72052c2ae05eb7fdcdd7c83bbe168f955`

```dockerfile
```

-	Layers:
	-	`sha256:9d20bd1d14336c162e2c94b426a0f0c4ffe26cc7ad6b4c46e23060f9e5e79fd5`  
		Last Modified: Wed, 21 Oct 2026 01:27:51 GMT  
		Size: 2.3 MB (2339435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fadeee28d4789b000c37c4a92e26bcc50b7822cf0d456af9932ae882e3ca22e0`  
		Last Modified: Wed, 21 Oct 2026 01:27:51 GMT  
		Size: 18.5 KB (18544 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:61217d5482edf8fbd5eecd6234619f28e6bb2bdd8489d6e2d1f80d1778704083
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.2 MB (146206506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03a40da12d91749aeaac4c3bf6df591eefd5a9de8f85b16b9943129ddf7511b8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 06:23:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 06:23:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 06:23:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 06:23:07 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 06:23:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 06:23:07 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 06:27:31 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 06:27:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 06:27:31 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 06:27:37 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 06:27:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 06:27:38 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 06:27:38 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f87c4f9d1360a462b9c53559ac0d02508f75df75a505f1c55cd0b5a24dca71a`  
		Last Modified: Sat, 17 Oct 2026 06:28:25 GMT  
		Size: 91.3 MB (91256226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e181c3ed713623cb206b6367997ab63f1d200a97f468b08c1f442b7f6a2b2c16`  
		Last Modified: Sat, 17 Oct 2026 06:28:23 GMT  
		Size: 16.8 MB (16783022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50201c02a40e08bf6aee7678373497b65398b360e93ecce7960efb1ae13d306c`  
		Last Modified: Sat, 17 Oct 2026 06:28:22 GMT  
		Size: 4.5 MB (4515231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7603aa15e01f6e064aec2d463bd0c048ec06bb519f2d1c2a472134938045eb5`  
		Last Modified: Sat, 17 Oct 2026 06:28:22 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:164743020c5071004f5aa9458224fbfe1b560643266419937a584ce89dfea9d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2343841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e178162e7380ff3ede7f69ce674a7011dea6449f2f6fd2d4873ea97c745f151b`

```dockerfile
```

-	Layers:
	-	`sha256:3637a4f1d1240e05700476aad97ce5614a5156562c593726ad038c14f4b55add`  
		Last Modified: Sat, 17 Oct 2026 06:28:22 GMT  
		Size: 2.3 MB (2325385 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f6e823b97cba323c6acd57262f20662e853e137ff8eaa17f5c4999326646c39`  
		Last Modified: Sat, 17 Oct 2026 06:28:22 GMT  
		Size: 18.5 KB (18456 bytes)  
		MIME: application/vnd.in-toto+json
