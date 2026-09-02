<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:8.19.21`](#kibana81921)
-	[`kibana:9.4.6`](#kibana946)
-	[`kibana:9.5.2`](#kibana952)

## `kibana:8.19.21`

```console
$ docker pull kibana@sha256:d4dfc2d9af953a02f78ea6be51905c23b6aafd86ecca7164e1cfa2d87c5f03ea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:8.19.21` - linux; amd64

```console
$ docker pull kibana@sha256:a7df798f164de50e45597eb9bd86efb7127a6bcb80f99cf4f83ee1321e1df260
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **459.0 MB (458979513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a3ed445689164ab31e259d6f9c84d9e9163e77c42804991a00f0b964cffd325`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 01 Sep 2026 23:04:41 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 01 Sep 2026 23:04:41 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 01 Sep 2026 23:12:38 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 01 Sep 2026 23:12:39 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 01 Sep 2026 23:12:39 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 01 Sep 2026 23:12:39 GMT
RUN fc-cache -v # buildkit
# Tue, 01 Sep 2026 23:12:39 GMT
WORKDIR /usr/share/kibana
# Tue, 01 Sep 2026 23:12:39 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 01 Sep 2026 23:12:39 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 01 Sep 2026 23:12:39 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:12:39 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 01 Sep 2026 23:12:39 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 01 Sep 2026 23:12:40 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 01 Sep 2026 23:12:41 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 01 Sep 2026 23:12:41 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 01 Sep 2026 23:12:41 GMT
LABEL org.label-schema.build-date=2026-08-26T18:14:44.924Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=f8b192d79d9df731fc3811263f4461d842834c6a org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.21 org.opencontainers.image.created=2026-08-26T18:14:44.924Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=f8b192d79d9df731fc3811263f4461d842834c6a org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.21
# Tue, 01 Sep 2026 23:12:41 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 01 Sep 2026 23:12:41 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 01 Sep 2026 23:12:41 GMT
USER 1000
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a1174d1a4d3d641b6b16dac4d3e313451431f7bc9ec541e4ac0cade06d1c3df`  
		Last Modified: Tue, 01 Sep 2026 23:13:46 GMT  
		Size: 11.8 MB (11806313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b62562245fde89a0d042074095009699952affc39af4edb809551cc7e2bb619`  
		Last Modified: Tue, 01 Sep 2026 23:13:53 GMT  
		Size: 400.8 MB (400776386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:355960f86b5317c60d40bfa26d3bdbc915aef27623bdea3ed2a4c3dd0521fcad`  
		Last Modified: Tue, 01 Sep 2026 23:13:45 GMT  
		Size: 9.5 KB (9529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3b9b0739fe315492aeaf5e3246f5275d27c9ad90c8b023cece11b53bc24ec7f`  
		Last Modified: Tue, 01 Sep 2026 23:13:46 GMT  
		Size: 16.5 MB (16460489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e72704b51c8bc703bb70e90bde3cf53e424223475b556f74b62057f74905dd1f`  
		Last Modified: Tue, 01 Sep 2026 23:13:46 GMT  
		Size: 5.2 KB (5241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21591a5650b3ae1ca2d13480cc878c2a2007a3c48374ae19ed9103a336aebe57`  
		Last Modified: Tue, 01 Sep 2026 23:13:47 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d50673f1d7c59cc9019df1d6c527c89f79bf9edd172be90aecdfc6504402d446`  
		Last Modified: Tue, 01 Sep 2026 23:13:48 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b01031921a2544352f380c4518076e560af467132caf883b8ed0ead5d98e1a0`  
		Last Modified: Tue, 01 Sep 2026 23:13:48 GMT  
		Size: 4.8 KB (4822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7df2d39a85bfb0176e5dba6d14403e77f909d8e6c69b55ccb83406aa349daa28`  
		Last Modified: Tue, 01 Sep 2026 23:13:49 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbcf804d6e2e39d321a50fd0c431462c9e16b3a2713db03be587e9fa1f37cc7c`  
		Last Modified: Tue, 01 Sep 2026 23:13:49 GMT  
		Size: 161.7 KB (161743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9fc323fe01ed7615b34c4347c70589ef8c32cccab5815166bc680b2c8a74749`  
		Last Modified: Tue, 01 Sep 2026 23:13:49 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.21` - unknown; unknown

```console
$ docker pull kibana@sha256:e624ea423b502fcb5d6a12467c859f44af886446a14770d154e49dbfb6ff4ebc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4889035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1492af95c9c4fe005fe5c3a0ea26ce39aed4bf613241fb5ccf15b9d30745080c`

```dockerfile
```

-	Layers:
	-	`sha256:bceb1b5c1b2b0abc8e2c558429ba2c1dd361f8f341bd3ff2e51277e83b289497`  
		Last Modified: Tue, 01 Sep 2026 23:13:45 GMT  
		Size: 4.8 MB (4848108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7cebdf2a8a222fc347b1b8d62282bbec34f0ce3f0f165bfdba34d6607be876c6`  
		Last Modified: Tue, 01 Sep 2026 23:13:45 GMT  
		Size: 40.9 KB (40927 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:8.19.21` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:2fcddd470d782b39a69872b98a2588cdc285e8da8bf9dc263dba42f336163bca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **471.5 MB (471478704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4764323033a85fbc5cfb05afe59a5df5b6a1ee3aba3c88abd6b9ac0f4bc7552b`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 01 Sep 2026 23:05:44 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 01 Sep 2026 23:05:44 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 01 Sep 2026 23:12:31 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 01 Sep 2026 23:12:32 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 01 Sep 2026 23:12:32 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 01 Sep 2026 23:12:32 GMT
RUN fc-cache -v # buildkit
# Tue, 01 Sep 2026 23:12:32 GMT
WORKDIR /usr/share/kibana
# Tue, 01 Sep 2026 23:12:32 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 01 Sep 2026 23:12:32 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 01 Sep 2026 23:12:32 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:12:32 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 01 Sep 2026 23:12:32 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 01 Sep 2026 23:12:33 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 01 Sep 2026 23:12:34 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 01 Sep 2026 23:12:34 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 01 Sep 2026 23:12:34 GMT
LABEL org.label-schema.build-date=2026-08-26T18:14:44.924Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=f8b192d79d9df731fc3811263f4461d842834c6a org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.21 org.opencontainers.image.created=2026-08-26T18:14:44.924Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=f8b192d79d9df731fc3811263f4461d842834c6a org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.21
# Tue, 01 Sep 2026 23:12:34 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 01 Sep 2026 23:12:34 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 01 Sep 2026 23:12:34 GMT
USER 1000
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a883ee4d530ec644c5a482717aabd3c4952bf3c09c92cfe55b296e179305536d`  
		Last Modified: Tue, 01 Sep 2026 23:13:43 GMT  
		Size: 11.7 MB (11677321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c369daa898638d9949214c6367dc29bd449ccbbddbe8b50a737605a5267924`  
		Last Modified: Tue, 01 Sep 2026 23:13:50 GMT  
		Size: 414.3 MB (414274056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:965998d113bba2f862207bf5af7662944f90b8ef8242643aaa5625aba2a9775c`  
		Last Modified: Tue, 01 Sep 2026 23:13:42 GMT  
		Size: 9.1 KB (9099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:817e047ed08f1fbb32b1b01af4cdf955d39d40609c1276580182a7423345a0ab`  
		Last Modified: Tue, 01 Sep 2026 23:13:43 GMT  
		Size: 16.5 MB (16460489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0df830533dae2a38b086422dd7f633ad57e435021fcb617430f668236328d162`  
		Last Modified: Tue, 01 Sep 2026 23:13:44 GMT  
		Size: 5.2 KB (5240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f99ded138e1aed172418973718eea16198fccdaaaecb224b514c1548df1aa28e`  
		Last Modified: Tue, 01 Sep 2026 23:13:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c779a37bcca344deea5ee9bb552aa3f6d5de01542479fada0259ba1a389cb13`  
		Last Modified: Tue, 01 Sep 2026 23:13:45 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a286e5765627fe7d3b5f08b43254109816c9fdf909b778a644787d24e00a362a`  
		Last Modified: Tue, 01 Sep 2026 23:13:45 GMT  
		Size: 4.8 KB (4821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45695748fee7c98fed7b3b455ca8475b39d518796d8b3c40a19d5ff7ada0e452`  
		Last Modified: Tue, 01 Sep 2026 23:13:46 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2bfdeb0cb95428db525ec94d39342edd18e9050ff12a4c07f686ff117091022`  
		Last Modified: Tue, 01 Sep 2026 23:13:46 GMT  
		Size: 158.3 KB (158261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:143d6aa290d33391010dc97533907aea549964ac28f9f27fce3b3b0948e80b38`  
		Last Modified: Tue, 01 Sep 2026 23:13:46 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.21` - unknown; unknown

```console
$ docker pull kibana@sha256:914f435dd3d04c9c6aaa6219ae4237616f3c8151a656f767ac41ee26a13cff9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4890346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36d35c754f710a709ce58dfbc7d37ec663615e658769e21c96f3930d857b343e`

```dockerfile
```

-	Layers:
	-	`sha256:edf296658309e946070a1995a4e2a797cdc7245ac1b0f0c51c1a93ee34a5239c`  
		Last Modified: Tue, 01 Sep 2026 23:13:43 GMT  
		Size: 4.8 MB (4849172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c16bb058e3dbc1bd0105d4aee3d3587be0d875f8afa3fa0d94cc53fd2a1cea03`  
		Last Modified: Tue, 01 Sep 2026 23:13:42 GMT  
		Size: 41.2 KB (41174 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.4.6`

```console
$ docker pull kibana@sha256:56f462d8132493b05c208b7d515adeb153b3b53301211e0b38f9c8321d5626e4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.4.6` - linux; amd64

```console
$ docker pull kibana@sha256:88078718801a41567ac09d1d7f55b0ca364355b40ae9c1b65213a6291afdbfcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **565.8 MB (565835735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae9ec804e12d6898e7b508791575c37d7573060ee5eb88cd2966b8ad69ccd9be`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:53:44 GMT
ENV container oci
# Mon, 31 Aug 2026 08:53:44 GMT
COPY dir:19cc2d5b9eaa116f3cb84eada48063b3bc3fe9e2c9e39a73cc87b72cc8d70c32 in /      
# Mon, 31 Aug 2026 08:53:44 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:53:44 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /root/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:53:29Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:53:29Z" "architecture"="x86_64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:53:29Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Tue, 01 Sep 2026 23:04:38 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 01 Sep 2026 23:04:38 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 01 Sep 2026 23:14:38 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 01 Sep 2026 23:14:39 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 01 Sep 2026 23:14:39 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 01 Sep 2026 23:14:39 GMT
RUN fc-cache -v # buildkit
# Tue, 01 Sep 2026 23:14:39 GMT
WORKDIR /usr/share/kibana
# Tue, 01 Sep 2026 23:14:39 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 01 Sep 2026 23:14:39 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 01 Sep 2026 23:14:39 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:14:39 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 01 Sep 2026 23:14:39 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 01 Sep 2026 23:14:40 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 01 Sep 2026 23:14:41 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 01 Sep 2026 23:14:41 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 01 Sep 2026 23:14:41 GMT
LABEL org.label-schema.build-date=2026-08-26T20:30:47.515Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=692551ad493ed71169e295e2160446428ee00b15 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-26T20:30:47.515Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=692551ad493ed71169e295e2160446428ee00b15 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6
# Tue, 01 Sep 2026 23:14:41 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.6 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 01 Sep 2026 23:14:42 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 01 Sep 2026 23:14:42 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 01 Sep 2026 23:14:42 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 01 Sep 2026 23:14:42 GMT
USER 1000
```

-	Layers:
	-	`sha256:2943616793071e9fa96e298a7454ac45b7a498df6ca5c681004955a177cdf999`  
		Last Modified: Mon, 31 Aug 2026 10:01:51 GMT  
		Size: 40.7 MB (40709577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade6640bb51b6057210db45f1829be18c56813455d1303bb42be8a1a8578b219`  
		Last Modified: Tue, 01 Sep 2026 23:15:52 GMT  
		Size: 19.3 MB (19315851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8e2d3d85d237d21c340a9e71682a4c2c7a97a31fa5151b4be21517e72e182de`  
		Last Modified: Tue, 01 Sep 2026 23:16:01 GMT  
		Size: 489.3 MB (489251883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:940bbbfb5679096f4c9f840603a3c58c16a4e50f24c24a8eef89647f337278d1`  
		Last Modified: Tue, 01 Sep 2026 23:15:51 GMT  
		Size: 9.5 KB (9531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5b989562e37cfa1a6c2a7fda1b45e4496af742b08b5cf51ee85d6ab88d5ffcc`  
		Last Modified: Tue, 01 Sep 2026 23:15:52 GMT  
		Size: 16.5 MB (16460489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9dac72abe7eb34402b48de7ca99c146ca2c86bd0b33fc7f8cda438aed6300d8`  
		Last Modified: Tue, 01 Sep 2026 23:15:53 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26db4d305ee955995590162f3125dfc74b7b72e8210e3b8965b8144a44314cd7`  
		Last Modified: Tue, 01 Sep 2026 23:15:54 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:907231f26dc2983f558ad4cc451fa72343105f44ab88dd7a4577c50e7a0557d2`  
		Last Modified: Tue, 01 Sep 2026 23:15:54 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26f9884d6a8d8144bde56401b2732008e3b3ca7ab4bf9bd85a76e553070cf637`  
		Last Modified: Tue, 01 Sep 2026 23:15:54 GMT  
		Size: 4.9 KB (4926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c91796006a54f760205fcfd0d331feeddaded7c4db07d74ecf5d4847cbe15287`  
		Last Modified: Tue, 01 Sep 2026 23:15:55 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c49a3c95443dcf1fd90df6e0819304b50c4c79b3ce6646ccf6f5b66acba7dbe1`  
		Last Modified: Tue, 01 Sep 2026 23:15:55 GMT  
		Size: 74.5 KB (74547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67214950c898b264a94ab9865559cada4ec725121458b58822ae9252e70632f0`  
		Last Modified: Tue, 01 Sep 2026 23:15:55 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d90fcc3d222ce5df574ebe1845bdf5c5dd575c444e13a0bee88d835b1fc968c`  
		Last Modified: Tue, 01 Sep 2026 23:15:56 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.6` - unknown; unknown

```console
$ docker pull kibana@sha256:59b8f9ef1f780ebb996b17ecb349f2c07f119f46cd763afe5bbc631036641eb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5949486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d818abac37684a6c7ecfbe0ae84d2891409534c144915b106de2bf21bab7ee25`

```dockerfile
```

-	Layers:
	-	`sha256:174b86de79b74000e8a526676146b112bb1dfce5297228856bfe2742f60acbcc`  
		Last Modified: Tue, 01 Sep 2026 23:15:52 GMT  
		Size: 5.9 MB (5906260 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad9b1e4f56cd3274f0fe34b0b176776a73552e45c5f1297e33c7b5a417e01f27`  
		Last Modified: Tue, 01 Sep 2026 23:15:51 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.4.6` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:815e885d2fa0be9d603753358f9a76a66ce584ec98d2a60365e1f298b0f28c6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **577.4 MB (577370411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e46408c6a6f1bd1d613a18299ca3ed21a530cca0448c1a9be89f74c001ead6bc`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:55:27 GMT
ENV container oci
# Mon, 31 Aug 2026 08:55:28 GMT
COPY dir:f2269a49305dc61b5c62efda70ce8327957d5aafa0915c5b324ac4402d0afd7e in /      
# Mon, 31 Aug 2026 08:55:28 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:55:28 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:55:28 GMT
COPY dir:314f6db1cd15d342fa9962b7dae89ed14fe0c81c812223914e17998e1aac0abe in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:55:28 GMT
COPY dir:314f6db1cd15d342fa9962b7dae89ed14fe0c81c812223914e17998e1aac0abe in /root/buildinfo/      
# Mon, 31 Aug 2026 08:55:28 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:55:06Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:55:06Z" "architecture"="aarch64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:55:06Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Tue, 01 Sep 2026 23:05:31 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 01 Sep 2026 23:05:31 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 01 Sep 2026 23:13:48 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 01 Sep 2026 23:13:49 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 01 Sep 2026 23:13:49 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 01 Sep 2026 23:13:49 GMT
RUN fc-cache -v # buildkit
# Tue, 01 Sep 2026 23:13:49 GMT
WORKDIR /usr/share/kibana
# Tue, 01 Sep 2026 23:13:49 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 01 Sep 2026 23:13:49 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 01 Sep 2026 23:13:49 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:13:49 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 01 Sep 2026 23:13:49 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 01 Sep 2026 23:13:50 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 01 Sep 2026 23:13:51 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 01 Sep 2026 23:13:51 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 01 Sep 2026 23:13:51 GMT
LABEL org.label-schema.build-date=2026-08-26T20:30:47.515Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=692551ad493ed71169e295e2160446428ee00b15 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-26T20:30:47.515Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=692551ad493ed71169e295e2160446428ee00b15 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6
# Tue, 01 Sep 2026 23:13:51 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.6 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 01 Sep 2026 23:13:51 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 01 Sep 2026 23:13:51 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 01 Sep 2026 23:13:51 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 01 Sep 2026 23:13:51 GMT
USER 1000
```

-	Layers:
	-	`sha256:8289a871631249c9c1a3b2366de832716cd43c77864c245a1c1364a2abeb5704`  
		Last Modified: Mon, 31 Aug 2026 10:01:50 GMT  
		Size: 38.8 MB (38815996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7d0fba5ceef3bd83c4ef4ee0ae85853ebaa2302813cf953201590e2acd9871c`  
		Last Modified: Tue, 01 Sep 2026 23:15:17 GMT  
		Size: 19.3 MB (19265078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a69427842ee0e76df5c04431bb081f3e41c967e50596d447b7d2cf7c64578a9`  
		Last Modified: Tue, 01 Sep 2026 23:15:27 GMT  
		Size: 502.7 MB (502732438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e81b5dcfa0f823aa308676855ff96db115eec90b905240a256d7ca4e195af66`  
		Last Modified: Tue, 01 Sep 2026 23:15:17 GMT  
		Size: 9.1 KB (9099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6e683f258bfcd0f92c1f4d182a9ee73fdb4a67a8d14fa410954aa94bd6b564c`  
		Last Modified: Tue, 01 Sep 2026 23:15:18 GMT  
		Size: 16.5 MB (16460488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72cda8e6c5c368796800f9c4014b61c7eb7fd85dc3c7c76b685e2232003937d0`  
		Last Modified: Tue, 01 Sep 2026 23:15:18 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96018d5c2008e7362ecfc95a20b5bd6d6c0f2b2da9bb546072662382be5c05e6`  
		Last Modified: Tue, 01 Sep 2026 23:15:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdbe0a5baf3fc808031d01fec44d393f946b0a2eb9e87c1180d7e6d9469e5f42`  
		Last Modified: Tue, 01 Sep 2026 23:15:19 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a54394f45a3a7a171327f38105f6abcae7752f604bda8e90957617e3c6686d0`  
		Last Modified: Tue, 01 Sep 2026 23:15:19 GMT  
		Size: 4.9 KB (4928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:837b47069da5545ff62a3aca6a477c80bcf6f37540c740aa6ba362476448c034`  
		Last Modified: Tue, 01 Sep 2026 23:15:20 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:344114b8234a489966636c5aa2d96cb5fcfd2850274f587726117c15d85f8c97`  
		Last Modified: Tue, 01 Sep 2026 23:15:20 GMT  
		Size: 73.5 KB (73453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9db590f7b4dfa6e5791e99283a59f1845f9f90066b0742fbfba83408aba74f3`  
		Last Modified: Tue, 01 Sep 2026 23:15:20 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8e3ddc01dff981e0e9e37a0e5ced4523bea9f8b94064f3bf890575d3b768975`  
		Last Modified: Tue, 01 Sep 2026 23:15:21 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.6` - unknown; unknown

```console
$ docker pull kibana@sha256:281d53682dfe260dfb587e8ccf0c7dbee8580b43bdf7f8878409d0b5e6297093
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5946633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79e2316865394cd871049fa09fa7dad3aebc33e8c464b113dfc600579e9815cb`

```dockerfile
```

-	Layers:
	-	`sha256:8d96fa5d5cd3a8dd2ba6a17091baf4ca8abc08bbe0f0a1eb2925cd3532a4fa80`  
		Last Modified: Tue, 01 Sep 2026 23:15:17 GMT  
		Size: 5.9 MB (5903150 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4336b46c84298921e2d8cb62aa7e499ba5dde73ca0076f866671f56292adf39`  
		Last Modified: Tue, 01 Sep 2026 23:15:16 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.5.2`

```console
$ docker pull kibana@sha256:43b5d872594d848bda4bb81a3e37141a1fc642f82aaab03e19ea0b249694da75
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.5.2` - linux; amd64

```console
$ docker pull kibana@sha256:d7cc86c625ea6cb1f380ec78441e0c510e8e3fef1a0e7eb4d58762cee56a92c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **560.6 MB (560616770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ab594146bc5b2f4f150dcb1f60f93b01e6967adbaa04c7627f21e3c9e730438`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:53:44 GMT
ENV container oci
# Mon, 31 Aug 2026 08:53:44 GMT
COPY dir:19cc2d5b9eaa116f3cb84eada48063b3bc3fe9e2c9e39a73cc87b72cc8d70c32 in /      
# Mon, 31 Aug 2026 08:53:44 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:53:44 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /root/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:53:29Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:53:29Z" "architecture"="x86_64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:53:29Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Mon, 31 Aug 2026 19:25:48 GMT
EXPOSE map[5601/tcp:{}]
# Mon, 31 Aug 2026 19:25:48 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:34:29 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Mon, 31 Aug 2026 19:34:30 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Mon, 31 Aug 2026 19:34:30 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Mon, 31 Aug 2026 19:34:30 GMT
RUN fc-cache -v # buildkit
# Mon, 31 Aug 2026 19:34:30 GMT
WORKDIR /usr/share/kibana
# Mon, 31 Aug 2026 19:34:30 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Mon, 31 Aug 2026 19:34:30 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 31 Aug 2026 19:34:30 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:34:30 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Mon, 31 Aug 2026 19:34:30 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:34:31 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Mon, 31 Aug 2026 19:34:31 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Mon, 31 Aug 2026 19:34:32 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Mon, 31 Aug 2026 19:34:32 GMT
LABEL org.label-schema.build-date=2026-08-18T11:21:49.813Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=37dc1e9d6dbf80bb1cf22da5ed258d3f642d2f9c org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.2 org.opencontainers.image.created=2026-08-18T11:21:49.813Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=37dc1e9d6dbf80bb1cf22da5ed258d3f642d2f9c org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.2
# Mon, 31 Aug 2026 19:34:32 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.2 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Mon, 31 Aug 2026 19:34:32 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Mon, 31 Aug 2026 19:34:32 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Mon, 31 Aug 2026 19:34:32 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Mon, 31 Aug 2026 19:34:32 GMT
USER 1000
```

-	Layers:
	-	`sha256:2943616793071e9fa96e298a7454ac45b7a498df6ca5c681004955a177cdf999`  
		Last Modified: Mon, 31 Aug 2026 10:01:51 GMT  
		Size: 40.7 MB (40709577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de63b1913361bec153ade0770b4aa4547ae42e9c19a8582bc4f497addf406699`  
		Last Modified: Mon, 31 Aug 2026 19:35:42 GMT  
		Size: 19.3 MB (19315834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8541c6995871b474788d02ddfb05476d24743106618dad8a15e0a6ad0b77de25`  
		Last Modified: Mon, 31 Aug 2026 19:35:49 GMT  
		Size: 484.0 MB (484032852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33341a1431022733ca923fca54364243131b6022bcdc42e6faf418e9b980ab6`  
		Last Modified: Mon, 31 Aug 2026 19:35:41 GMT  
		Size: 9.5 KB (9529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:967e2b73002e3bb1e0d672e48c25bbd62a94443c76e1546510b7cc0e9e8a5d38`  
		Last Modified: Mon, 31 Aug 2026 19:35:42 GMT  
		Size: 16.5 MB (16460487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:490a9a49e1a85fad7d05e56ee95deff305e7798803ee6cabc8bbc83d632e2a25`  
		Last Modified: Mon, 31 Aug 2026 19:35:42 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00d47140fee9beed5722cd5f1066774918a6f489d5199104707039c971b100f6`  
		Last Modified: Mon, 31 Aug 2026 19:35:43 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e3aab5c0c55d59b9b8cca08ab207ec070b682ca8bfd10caa5d4f4b73d6a01be`  
		Last Modified: Mon, 31 Aug 2026 19:35:43 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7c83e1d6b28a3d11dc8ca8eaba27cdc1da9b0522733db547e59f45626fdec57`  
		Last Modified: Mon, 31 Aug 2026 19:35:43 GMT  
		Size: 5.0 KB (5004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5dfa1f90b41b49db64a99713377b4317c065f0edae0c87b14421052edfc56a3`  
		Last Modified: Mon, 31 Aug 2026 19:35:44 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0bbe8846d7c5776db4dabdea15f1e683ac6d4e536a273ca8fd4966ece3ace88`  
		Last Modified: Mon, 31 Aug 2026 19:35:44 GMT  
		Size: 74.5 KB (74545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f412935a16191cc7254b983c4851985c401bb8b41b1cf1b69c62ccf568558bdc`  
		Last Modified: Mon, 31 Aug 2026 19:35:44 GMT  
		Size: 1.1 KB (1052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a663b1464ad978e59d2ca6277042ebfb237d7132b41eb078b3e2b467aee5e96`  
		Last Modified: Mon, 31 Aug 2026 19:35:46 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.2` - unknown; unknown

```console
$ docker pull kibana@sha256:f32228bdf79bcf827add075d4a4e5c3fc739c5d0a30b0b95807d365b62893d1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6137234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31447c322f1eabbb7b5811c10f660561cff664515a19507c0f3583df1c63fb89`

```dockerfile
```

-	Layers:
	-	`sha256:7bff8707a34f4c670a4791d5608de66f0c84f013925606436dae0e046eaf12e2`  
		Last Modified: Mon, 31 Aug 2026 19:35:41 GMT  
		Size: 6.1 MB (6094008 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:969f5afdf550a0a09d71f3390f905f58d1861630b556262f110580300159e2ca`  
		Last Modified: Mon, 31 Aug 2026 19:35:41 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.5.2` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:22c5781346d2015dd01b6869c9cf66c184603f04d98a857d7b17a09ffbd27a03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **572.1 MB (572145393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69149ae5d290e5a7684cd1a803254d229241d44a06a953b9dfd649d7ad86f1d2`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:55:27 GMT
ENV container oci
# Mon, 31 Aug 2026 08:55:28 GMT
COPY dir:f2269a49305dc61b5c62efda70ce8327957d5aafa0915c5b324ac4402d0afd7e in /      
# Mon, 31 Aug 2026 08:55:28 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:55:28 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:55:28 GMT
COPY dir:314f6db1cd15d342fa9962b7dae89ed14fe0c81c812223914e17998e1aac0abe in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:55:28 GMT
COPY dir:314f6db1cd15d342fa9962b7dae89ed14fe0c81c812223914e17998e1aac0abe in /root/buildinfo/      
# Mon, 31 Aug 2026 08:55:28 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:55:06Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:55:06Z" "architecture"="aarch64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:55:06Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Mon, 31 Aug 2026 19:43:03 GMT
EXPOSE map[5601/tcp:{}]
# Mon, 31 Aug 2026 19:43:03 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:49:48 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Mon, 31 Aug 2026 19:49:48 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Mon, 31 Aug 2026 19:49:48 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Mon, 31 Aug 2026 19:49:49 GMT
RUN fc-cache -v # buildkit
# Mon, 31 Aug 2026 19:49:49 GMT
WORKDIR /usr/share/kibana
# Mon, 31 Aug 2026 19:49:49 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Mon, 31 Aug 2026 19:49:49 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 31 Aug 2026 19:49:49 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:49:49 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Mon, 31 Aug 2026 19:49:49 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:49:50 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Mon, 31 Aug 2026 19:49:50 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Mon, 31 Aug 2026 19:49:51 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Mon, 31 Aug 2026 19:49:51 GMT
LABEL org.label-schema.build-date=2026-08-18T11:21:49.813Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=37dc1e9d6dbf80bb1cf22da5ed258d3f642d2f9c org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.2 org.opencontainers.image.created=2026-08-18T11:21:49.813Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=37dc1e9d6dbf80bb1cf22da5ed258d3f642d2f9c org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.2
# Mon, 31 Aug 2026 19:49:51 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.2 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Mon, 31 Aug 2026 19:49:51 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Mon, 31 Aug 2026 19:49:51 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Mon, 31 Aug 2026 19:49:51 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Mon, 31 Aug 2026 19:49:51 GMT
USER 1000
```

-	Layers:
	-	`sha256:8289a871631249c9c1a3b2366de832716cd43c77864c245a1c1364a2abeb5704`  
		Last Modified: Mon, 31 Aug 2026 10:01:50 GMT  
		Size: 38.8 MB (38815996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd72f34292416104e3617067399ceb2087eeaca5383bb32bacfc2a11994f5fe3`  
		Last Modified: Mon, 31 Aug 2026 19:51:11 GMT  
		Size: 19.3 MB (19265038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8174bc56264db3302023a637294146fc5ea61195c1bfaec7c4e7cb552d54f80f`  
		Last Modified: Mon, 31 Aug 2026 19:51:19 GMT  
		Size: 497.5 MB (497507385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:121f47c3d71c8e5f27bf08e351a8a043b7bc7fb4ec577a9ed453f367b9e3293e`  
		Last Modified: Mon, 31 Aug 2026 19:51:10 GMT  
		Size: 9.1 KB (9100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67d99dab8208412a3b60541bc11aa74884ec1bf6194a3dddbe3fad4e8572f1cb`  
		Last Modified: Mon, 31 Aug 2026 19:51:11 GMT  
		Size: 16.5 MB (16460486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da7c671a3c6d3d826c57213d351e07d145c47358d00d4733919c5fa39a7716ed`  
		Last Modified: Mon, 31 Aug 2026 19:51:12 GMT  
		Size: 5.2 KB (5229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bc44287487e1b3733c9abfb5bc223883cd0341bf0ffad47e6141170100ef0d6`  
		Last Modified: Mon, 31 Aug 2026 19:51:13 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0f9764c431d7aabb542ee442355d001a2e83cad45ad4b12fe7681afa5431eee`  
		Last Modified: Mon, 31 Aug 2026 19:51:13 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eceea139f95fbcd9a8c656cce87bd7642e566bd4c97cba5aad297ed8c179de01`  
		Last Modified: Mon, 31 Aug 2026 19:51:13 GMT  
		Size: 5.0 KB (5001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39d0d63a9982362fa5a816c9408144505c262d41ef685be073cfec0b49ae4b7d`  
		Last Modified: Mon, 31 Aug 2026 19:51:14 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85ed0e36fc0ee77411c7a94076bf8f1ee1fe66d1916b79eab267b934ecee8b64`  
		Last Modified: Mon, 31 Aug 2026 19:51:14 GMT  
		Size: 73.5 KB (73454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6568582d6e1950e4ff3fe607457fd33667614611e7ea47b96d30d3f28cc713fe`  
		Last Modified: Mon, 31 Aug 2026 19:51:14 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c7f9ac81f5bbbe06cafe025d2a7636c73c48493a2df6cb7e19dd76179d0bf54`  
		Last Modified: Mon, 31 Aug 2026 19:51:15 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.2` - unknown; unknown

```console
$ docker pull kibana@sha256:b95d262403c23630ed55a0b2d094c5aaa70495c3064a4982786e75f06df6f958
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6134381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ae89496c0ffcaf842302c03627ae16915a8b466e95d4361fb8aedfbed13f0fe`

```dockerfile
```

-	Layers:
	-	`sha256:529843e3a621ef913ec34aaae1998b25e294063df19f195813f48987301f73aa`  
		Last Modified: Mon, 31 Aug 2026 19:51:11 GMT  
		Size: 6.1 MB (6090898 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57f65dd265f01580a201cb5640c80aadbd961ffaf7274665b4f633a07fa33cd0`  
		Last Modified: Mon, 31 Aug 2026 19:51:10 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json
