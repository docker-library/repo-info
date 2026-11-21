## `clojure:temurin-21-lein-trixie`

```console
$ docker pull clojure@sha256:f2c677359c5e97100ac1d74dc49b367a3cb67b2c1e6091fcae79457c913a288f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:289ad3d9bf6e4c962e8e7d44c30ce48dfae846211af6d6d45b0a544d2fc58ff6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231254669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7568f3d83371c5518b3062823966996b522154c0247c3747b155109b9cdf4ef`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 18:10:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 18:10:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 18:10:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 18:10:05 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 18:10:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 18:10:05 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 18:11:44 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 18:11:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 18:11:44 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 18:11:45 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 18:11:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 18:11:45 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 18:11:45 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5bd2257f42f01b60952580bef04f03dd2ee5e164e1873b9c48a0083167e6c56`  
		Last Modified: Fri, 20 Nov 2026 18:12:08 GMT  
		Size: 158.4 MB (158440960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7959bfa5dab80b5208172b345e0ec141ee410abca103a712b4a356ffd30262`  
		Last Modified: Fri, 20 Nov 2026 18:12:05 GMT  
		Size: 18.9 MB (18885079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:229644589413c5fe57bc7d164bde3ba66b7076c3d732cb4fa965372dc71faa13`  
		Last Modified: Fri, 20 Nov 2026 18:12:05 GMT  
		Size: 4.5 MB (4515190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fec460a5ba93813cb2e264396adb47fc75415df0e827528192c0728ee49f56a`  
		Last Modified: Fri, 20 Nov 2026 18:12:04 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8ecd7c7207a8ee7171f95af742a3955594ed2ce33bb8bba9457f41a9a84619cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3846039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a51dc8e2d2a4f124a0d2243c8385f898d3c4f9dfdc5d006cf61203601a702f8`

```dockerfile
```

-	Layers:
	-	`sha256:41a96a8a20e82aa5de87e5e7e803400e66765f572f37bb33163532451745c7db`  
		Last Modified: Fri, 20 Nov 2026 18:12:05 GMT  
		Size: 3.8 MB (3828322 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c122bbd10228c323ad33e03cbf8c96c9810f373289de30a835645063560dbc38`  
		Last Modified: Fri, 20 Nov 2026 18:12:04 GMT  
		Size: 17.7 KB (17717 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5d632fdaf51f49b39fda6c5209ce4f11072d5b0e58637a3a127f35fba6607f6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.8 MB (229829265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c9c761505d6452c9afa3335bb69d84af62848ad3cd142dd5cd1be076ab3253a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 01:04:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:04:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:04:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:04:48 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 01:04:48 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 01:04:48 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:06:11 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 01:06:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 01:06:11 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 01:06:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 01:06:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:06:13 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:06:13 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2678582f6e34f227bb6f00971c2c55d0fc9ddf2e2768653b0e221cce51f0dc0c`  
		Last Modified: Thu, 12 Nov 2026 01:06:36 GMT  
		Size: 156.7 MB (156691645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82092f046e46e505757930536eb8701a23cb03d16237c1c7e0f5ee84299fbb34`  
		Last Modified: Thu, 12 Nov 2026 01:06:33 GMT  
		Size: 18.8 MB (18842857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9008532d1f067c2d743beea23ce63835d040c8c396a052c5613005a7145916c6`  
		Last Modified: Thu, 12 Nov 2026 01:06:33 GMT  
		Size: 4.5 MB (4515227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00d6380553dbc01efcceb5d6c9654c0b759017d8bcdb73911d0abf31467b0d20`  
		Last Modified: Thu, 12 Nov 2026 01:06:32 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:7ec1c00142fae5f5c032593de688251c784a6d0b4c69ec936081f547b7c49376
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3846393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a78a071e32c3163f8953b549beb51b4b94a2a9fa09bd06c1bca1a3cc8f42b52a`

```dockerfile
```

-	Layers:
	-	`sha256:28dc63ff50efc3f53af7f34ebc1a9bf39fa98536dfce1f98c266b8bdecafea17`  
		Last Modified: Thu, 12 Nov 2026 01:06:33 GMT  
		Size: 3.8 MB (3828554 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c2495e52bbb00e894ca4c59a85a8ff74df7b0f38072e94f0390a217e374bf02`  
		Last Modified: Thu, 12 Nov 2026 01:06:32 GMT  
		Size: 17.8 KB (17839 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:d8b2832aedf23ec32c82f8a17411f376832682219c66cd7cd88bf5acbb303776
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.3 MB (234277405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab5ece107255f25abb5ddfdbf3796ece1cdc02b22546e1a574cd7ab9ea9ee0a7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 19:36:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:36:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:36:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:36:46 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 19:36:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 19:36:46 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 19:39:50 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 19:39:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 19:39:50 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 19:39:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 19:39:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 19:39:55 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 19:39:55 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a01bca34f32a7563bebb74d43748e34221e6723675a95cef813ab7b59b2c908`  
		Last Modified: Fri, 20 Nov 2026 19:40:47 GMT  
		Size: 157.6 MB (157596498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c22f1c53bb8f2bc4ebb8f50368de28b52494e7a6cea7499fcf318c75c3dd6663`  
		Last Modified: Fri, 20 Nov 2026 19:40:44 GMT  
		Size: 18.9 MB (18939162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25a7213c9b826197c31eacc0441435a9a4792c8bb789721594a1d0225620742d`  
		Last Modified: Fri, 20 Nov 2026 19:40:43 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5969ad3fa46481cbd60b7cc923cdf2277f42edb02525d87fed9845a771046551`  
		Last Modified: Fri, 20 Nov 2026 19:40:43 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:91cd2297c0b88e55d98f75a17ad57705a701a580b59831222701969605fe2af9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3845836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57bef3af78c5a9e4be5d662e160d906e5be657f59cbc60f6eab803929c1ca007`

```dockerfile
```

-	Layers:
	-	`sha256:aa4afe861e7c835d4a4799f9485191d82019db96f9517ccb1e741f2647311a07`  
		Last Modified: Fri, 20 Nov 2026 19:40:43 GMT  
		Size: 3.8 MB (3828074 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7d82d62188639fb61141856547722e5fdbac6783fced796cb6f6e244585496e`  
		Last Modified: Fri, 20 Nov 2026 19:40:42 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json
