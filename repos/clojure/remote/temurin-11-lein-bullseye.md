## `clojure:temurin-11-lein-bullseye`

```console
$ docker pull clojure@sha256:a9ba4c4332b123d20bc8cdac5136812991a1e09c7db6725bca98e44104265f13
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-lein-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:92cf812ad2fb5f9c141addf1c351bd6a7cac7a4e4eac0426ddb8cf5eb83c95f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 MB (221106941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbbbc9ab63b1f0cfc3c38125dc7d42b45f164e2473e36985baff03a67fa6e29b`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:29:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:29:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:29:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:29:58 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:29:58 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:29:58 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:31:06 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:31:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:31:06 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:31:07 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:31:07 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b801f31daa3bcb942996610638bef1456d75b041d23d05ad28d18dc009f7f70`  
		Last Modified: Thu, 16 Jul 2026 01:31:26 GMT  
		Size: 145.9 MB (145886149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:030e6d278ec43731fd1640b9b1f88cb27c9f55b40c86bf320839ea954c54b5a5`  
		Last Modified: Thu, 16 Jul 2026 01:31:23 GMT  
		Size: 16.9 MB (16928997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02fdc87eb53544b4c6f6e86874a9107fbccf6f26c4654480b1d84b4df41018ac`  
		Last Modified: Thu, 16 Jul 2026 01:31:23 GMT  
		Size: 4.5 MB (4515187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:def9f1edc918c7e63a9fc06d7ccd76649c77c06f7276f5c3ffa4357d18c5a81e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4536291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91a7b9384c91b070eb7ec73ea608472f485e72b6bf8c388ecad099201d95fe3d`

```dockerfile
```

-	Layers:
	-	`sha256:43b3260c2fd22c8430a8e5cf2f08ead5c9ea85da121f8aa9380a151ecebf6aa2`  
		Last Modified: Thu, 16 Jul 2026 01:31:23 GMT  
		Size: 4.5 MB (4520543 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef8eaacf5dce723684b3a7ad838b154eb6eb4d691915e0f317072efaca2f929a`  
		Last Modified: Thu, 16 Jul 2026 01:31:22 GMT  
		Size: 15.7 KB (15748 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ca1294bc925487bb6ee47e6cdc54fe4ceec4852fa9e85f90fa1af328ed339633
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.3 MB (216286061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52626ec31a970e4b64ca8d322dbcb9d71bc34c6ab08e0772202713de8d648d03`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:20:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:20:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:20:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:20:39 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:20:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:20:39 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:21:48 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:21:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:21:48 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:21:49 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:21:49 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d32c2636c121634a646908fb56d739eb7a17dc25143c5de47ed356c71b91741`  
		Last Modified: Thu, 16 Jul 2026 01:22:10 GMT  
		Size: 142.6 MB (142582149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:107e0c0da9229493ee9e94a908950e2ae1db4af6f046a712920fa9cd98cfee57`  
		Last Modified: Thu, 16 Jul 2026 01:22:07 GMT  
		Size: 16.9 MB (16927814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a78b64103578bf2988c6d98436588e412afec83f9a4a591bfe9b9125a68e7a20`  
		Last Modified: Thu, 16 Jul 2026 01:22:06 GMT  
		Size: 4.5 MB (4515176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:a2c2a29654756acefb665cdbd5396673cdf0a62307f0606c53e2e2c22945d773
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4536004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:704e8947f53bbb19fd0bd3a29e5e4d07c43a32fd4d68e4accbc8c104009b932a`

```dockerfile
```

-	Layers:
	-	`sha256:72a30cbfb2279b706b6b9d7ebe943651b65fb8ee41562f3c6f004eb329bc565d`  
		Last Modified: Thu, 16 Jul 2026 01:22:06 GMT  
		Size: 4.5 MB (4520135 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95c19eb8e0ebf63f6cb76eed311bad5f384d53740ae3b7f327a4803ef57fde65`  
		Last Modified: Thu, 16 Jul 2026 01:22:06 GMT  
		Size: 15.9 KB (15869 bytes)  
		MIME: application/vnd.in-toto+json
